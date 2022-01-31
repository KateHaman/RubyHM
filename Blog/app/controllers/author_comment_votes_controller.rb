class AuthorCommentVotesController < ApplicationController
  before_action :authorize
  before_action :set_comment

  def like
    if already_voted?
      flash[:notice] = 'It is not possible to vote more than once.'
    else
      @comment.author_comment_votes.liked.create(author_id: current_author.id)
    end
  end

  def dislike
    if already_voted?
      flash[:notice] = 'It is not possible to vote more than once.'
    else
      @comment.author_comment_votes.disliked.create(author_id: current_author.id)
    end
  end

  # def rating
  #   @comment.rating + 1 if @comment.liked?
  #   @comment.rating - 1 if @comment.disliked?
  #   @comment.increment!(:rating)
  # end

  private

  def set_comment
    @comment = Comment.find(params[:comment_id])
  end

  def already_voted?
    AuthorCommentVote.where(author_id: current_author.id, comment_id: params[:comment_id]).exists?
  end
end
