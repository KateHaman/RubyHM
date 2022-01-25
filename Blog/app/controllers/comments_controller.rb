class CommentsController < ApplicationController
  before_action :authorize, only: %i[edit update create new]

  def create
    @post = Post.find(params[:post_id])
    @author_id = @post.author_id
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    return redirect_back fallback_location: root_path, notice: 'Unable to edit posts created more than hour ago.' if @comment.created_at < 1.hour.ago

    @comment.update(comment_params)
    redirect_to @post, notice: 'The comment has been updated.'
  end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    if current_author == @comment.author
    end
  end

  private

  def comment_params
    attributes = params.require(:comment).permit(:body).merge(author_id: current_author.id)
    attributes[:status] = params[:comment][:status].to_i if params[:comment][:status]
    attributes[:edited] = true if params[:action] == 'update' && !params[:comment][:status]
    attributes
  end
end
