class CreateMushrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :mushrooms do |t|
      t.string :name
      t.string :img_url
      t.string :description
      t.string :season
      t.string :scientific_name
      t.string :wiki_url
      t.string :edibility
      t.string :dimensions
      t.string :location

      t.timestamps
    end
  end
end
