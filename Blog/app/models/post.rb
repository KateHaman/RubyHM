class Post < ApplicationRecord
  belongs_to :author
  has_many :comments, dependent: :destroy

  validates :title, :content, :image, presence: true
  validates :title, :content, uniqueness: true
  validates :content, length: { minimum: 10 }
  validates :title, length: { in: 5..100 }

  def self.search(search)
    if search
      find(:all, conditions: ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
