class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :child_name
      t.date :child_birthdate
      t.binary :child_image
      t.references :trip, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
