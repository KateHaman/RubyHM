class AuthorCommentVote < ApplicationRecord
  belongs_to :comment
  belongs_to :author

  enum vote_value: %i[unvoted liked disliked]

  scope :unvoted, -> { where(vote_value: :unvoted) }
  scope :liked, -> { where(vote_value: :liked) }
  scope :disliked, -> { where(vote_value: :disliked) }
end
