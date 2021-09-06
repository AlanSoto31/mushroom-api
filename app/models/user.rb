class User < ApplicationRecord
  has_secure_password
  has_many :favorites, dependent: :delete_all
  has_many :mushrooms, through: :favorites
  validates :name, presence: true, length: { in: 2..15 }
  validates :email, uniqueness: true, presence: true
end

