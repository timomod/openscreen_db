class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.string :tagline
      t.text :description

      t.timestamps null: false
    end
  end
end
