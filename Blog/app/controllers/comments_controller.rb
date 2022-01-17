class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @author_id = @post.author_id
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.update(status: params[:status].to_i)
    redirect_to @post, notice: 'The comment has been published.'
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :author_id, :status, :post_id)
  end
end
