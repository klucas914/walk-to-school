class AddTripCompleteToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :trip_complete, :boolean
  end
end
