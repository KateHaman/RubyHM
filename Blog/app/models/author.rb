class Author < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :author_comment_votes, dependent: :destroy
  has_secure_password

  before_save :downcase_email

  PASSWORD_REQUIREMENTS = /\A
    (?=.{8,})
    (?=.*\d)
    (?=.*[a-z])
    (?=.*[A-Z])
    (?=.*[[:^alnum:]])
/x.freeze

  validates :first_name, :last_name, presence: true
  validates_uniqueness_of :email
  validates_format_of :email, with: /\A[\w.+-]+@\w+\.\w+\z/, message: 'Please enter a valid email address.'
  validates :password, format: PASSWORD_REQUIREMENTS, allow_nil: true

  def full_name
    "#{first_name} #{last_name}"
  end

  private

  def downcase_email
    self.email = email.downcase
  end
end
