class User < ActiveRecord::Base
  has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :email, uniqueness: true
  validates :email, uniqueness: {case_sensitive: false}
end
