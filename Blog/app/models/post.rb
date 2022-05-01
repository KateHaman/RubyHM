class Post < ApplicationRecord
  include ActiveModel::Validations

  belongs_to :author
  has_many :comments, dependent: :destroy
  has_one_attached :image

  validates :image, file_size: { less_than_or_equal_to: 300.kilobytes, message: 'should be less than %{count}' },
            file_content_type: { allow: %w[image/jpeg image/png], message: 'only allows jpeg and png' }

  validates :title, :content, presence: true
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
