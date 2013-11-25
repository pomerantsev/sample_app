class User < ActiveRecord::Base
  validates :name, presence: true,
                   length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  before_save :convert_email_to_downcase

  has_secure_password

  private

  def convert_email_to_downcase
    email.downcase!
  end
end
