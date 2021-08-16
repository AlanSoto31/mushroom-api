class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :mushroom
  validates_presence_of :user_id, :mushroom_id
end
