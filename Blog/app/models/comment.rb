class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :author

  validates :body, :post, :author, presence: true

  enum status: {
    unpublished: 0,
    published: 1
  }

  scope :published, -> { where(status: 1) }
  scope :unpublished, -> { where(status: 0) }
end
