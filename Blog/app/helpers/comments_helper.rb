module CommentsHelper
  def current_author_comment?
    current_author && (current_author.id == comment.author_id)
  end
end
