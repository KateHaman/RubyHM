module AuthorCommentVotesHelper
  def total_rating
    AuthorCommentVote.sum(:vote_value)
  end
end
