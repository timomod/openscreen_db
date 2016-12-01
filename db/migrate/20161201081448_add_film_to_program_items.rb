class AddFilmToProgramItems < ActiveRecord::Migration
  def change
    add_reference :program_items, :film, index: true, foreign_key: true
  end
end
