class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.string :child_name
      t.string :starting_point
      t.string :destination
      t.timestamp :departure_time
      t.timestamp :arrival_time
      t.boolean :trip_complete
      t.references :trip, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
