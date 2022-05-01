module CommentsHelper
  attr_reader :comment

  def comment_author(comment)
    current_author && (current_author.id == comment.author_id)
  end
end
