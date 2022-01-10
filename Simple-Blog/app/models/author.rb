class Author < ApplicationRecord
  has_many :posts, dependent: :destroy

  def full_name
    "#{first_name} #{last_name}"
  end
end
