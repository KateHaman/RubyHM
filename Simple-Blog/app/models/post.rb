class Post < ApplicationRecord
  belongs_to :author, optional: true

  validates :title, presence: true, length: { in: 5..100 }, uniqueness: true
  validates :content, presence: true, uniqueness: true, length: { minimum: 10 }
  validates :image, presence:true
end
