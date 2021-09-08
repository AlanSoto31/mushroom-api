class Mushroom < ApplicationRecord
    has_many :favorites, dependent: :delete_all
    has_many :users, through: :favorites

    #validates :name, presence: true, length: { in: 2..15 }
    #validates :img_url, presence: true, length: { minimum: 20 }
    #validates :description, presence: true, length: {in: 10..300}
    #validates :scientific_name, presence: true, length: { in: 2..20 }
    #validates :wiki_url, presence: true, length: { minimum: 20 }
    #validates :edibility, presence: true, length: { minimum: 2 }
    #validates :dimensions, presence: true, length: { minimum: 2 }
    #validates :location, presence: true, length: { minimum: 2 }

end
