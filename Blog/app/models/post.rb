class Post < ApplicationRecord
  belongs_to :author
  has_many :comments, dependent: :destroy
  has_many :views

  validates :title, :content, :image, presence: true
  validates :title, :content, uniqueness: true
  validates :content, length: { minimum: 10 }
  validates :title, length: { in: 5..100 }

end
