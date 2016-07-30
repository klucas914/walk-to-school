class AddChildAndLocationToTrips < ActiveRecord::Migration
  def change
    add_reference :trips, :child, index: true, foreign_key: true
    add_reference :trips, :location, index: true, foreign_key: true
  end
end
