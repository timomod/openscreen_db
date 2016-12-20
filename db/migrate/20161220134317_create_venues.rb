class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :description
      t.integer :street_number
      t.string :address_01
      t.string :address_02
      t.string :country
      t.string :google_map

      t.timestamps null: false
    end
  end
end
