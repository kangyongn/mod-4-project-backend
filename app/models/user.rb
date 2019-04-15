class User < ApplicationRecord
  has_secure_password
  has_many :gifts

  validates :email, uniqueness: true
end
