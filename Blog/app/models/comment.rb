class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :author
  has_many :author_comment_votes, dependent: :destroy

  has_ancestry

  validates :body, :post, :author, presence: true

  enum status: {
    unpublished: 0,
    published: 1
  }

  scope :published, -> { where(status: :published) }
  scope :unpublished, -> { where(status: :unpublished) }
end
