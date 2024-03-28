class User < ApplicationRecord
  has_many :todos

  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
end
