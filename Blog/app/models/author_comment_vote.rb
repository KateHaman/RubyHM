class AuthorCommentVote < ApplicationRecord
  belongs_to :comment
  belongs_to :author

  enum vote_value: %i[liked disliked]

  scope :liked, -> { where(vote_value: :liked) }
  scope :disliked, -> { where(vote_value: :disliked) }
end
