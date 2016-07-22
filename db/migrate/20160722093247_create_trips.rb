class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :child_name
      t.string :starting_point
      t.string :destination

      t.timestamps null: false
    end
  end
end
