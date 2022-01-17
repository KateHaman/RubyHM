class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :author

  validates :body, presence: true
  validates :post, presence: true
  validates :author, presence: true

  enum status: {
    unpublished: 0,
    published: 1
  }

  # def check_if_valid
  #   body.empty?
  # end

  # scope :published, -> { where(status: 1) }
  # scope :unpublished, -> { where(status: 0) }
end

private
# before_save :check_if_valid