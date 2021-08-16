class User < ApplicationRecord
  has_secure_password
  has_many :favorites, dependent: :delete_all
  has_many :mushrooms, through: :favorites
  validates_presence_of :name, :email, :password
end