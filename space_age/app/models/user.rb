class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :username, :email, :password, :password_confirmation,  allow_blank: true
  validates :username, uniqueness: true
  validates :email, allow_blank: true, uniqueness:true

  enum role: %w(default admin)
end
