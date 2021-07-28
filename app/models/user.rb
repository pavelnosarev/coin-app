class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :usercoins
  has_many :coins, through: :usercoins
end
