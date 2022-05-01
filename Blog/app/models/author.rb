class Author < ApplicationRecord
  include ActiveModel::Validations

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :author_comment_votes, dependent: :destroy
  has_secure_password
  has_one_attached :avatar

  validates :avatar, file_size: { less_than_or_equal_to: 100.kilobytes, message: 'should be less than %{count}' },
            file_content_type: { allow: %w[image/jpeg image/png], message: 'only allows jpeg and png' }

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
