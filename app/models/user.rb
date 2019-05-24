class User < ApplicationRecord
  has_many :pets_users
  has_many :pets, through: :pets_users

  has_secure_password
  validates :username, uniqueness: {case_sensitive: false}
end
