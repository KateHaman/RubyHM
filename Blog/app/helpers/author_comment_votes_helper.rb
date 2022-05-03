module AuthorCommentVotesHelper
  def total_rating(comment)
    (comment.author_comment_votes.liked.count) - (comment.author_comment_votes.disliked.count)
  end
end
