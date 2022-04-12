class User < ActiveRecord::Base
  has_secure_password
  validates :first_name, presence: true
  validates :last_name, presence: true

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, uniqueness: {case_sensitive: false}

  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :password, length: {minimum: 3}
  
  def self.authenticate_with_credentials email, password
    user = User.find_by_email(email)
    if user
      if user.authenticate password
      user
      end
    else
      nil
    end
  end
end
