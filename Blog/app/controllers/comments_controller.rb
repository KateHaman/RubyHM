class CommentsController < ApplicationController
  before_action :authorize, only: %i[edit update create new]
  before_action :set_post, only: %i[create edit update]
  before_action :set_comment, only: %i[edit update]

  def create
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def edit; end

  def update
    return redirect_back fallback_location: root_path, notice: 'Unable to edit posts created more than hour ago.' if @comment.created_at < 1.hour.ago

    if @comment.update(comment_params)
      redirect_to post_path(@post), notice: 'Comment was successfully updated.'
    else
      redirect_to post_path(@post)
    end
  end

  private

  def comment_params
    attributes = params.require(:comment).permit(:body).merge(author_id: current_author.id)
    attributes[:status] = params[:comment][:status].to_i if params[:comment][:status]
    attributes[:edited] = true if params[:action] == 'update' && !params[:comment][:status]
    attributes
  end

  def set_post
    @post = Post.find(params[:post_id])
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end
end
