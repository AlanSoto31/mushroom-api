class Mushroom < ApplicationRecord
    has_many :favorites, dependent: :delete_all
    has_many :users, through: :favorites
    validates_presence_of :name, :img_url, :description, :scientific_name, :wiki_url, :edibility, :dimensions, :location
end
