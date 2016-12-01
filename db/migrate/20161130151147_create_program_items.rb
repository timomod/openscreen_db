class CreateProgramItems < ActiveRecord::Migration
  def change
    create_table :program_items do |t|
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
