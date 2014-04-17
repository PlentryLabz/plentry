class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :email, :password, :password_comfirmation

  validates :password, presence: true,
                      on: :create,
                      length: {minimum: 6, maximum: 32}
  validates :email, presence: true,
                    uniqueness: true,
                    email: true
  validates :name, presence: true
  validate :check_authenticate, if: :email

  has_many :links

  def to_s
    name
  end

  private

  def check_authenticate
    if self.try(:authenticate, password)
      errors.add(:password, :user_or_password_invalid)
    end
  end
end
