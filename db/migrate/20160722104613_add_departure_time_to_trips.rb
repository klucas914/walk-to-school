class AddDepartureTimeToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :departure_time, :timestamp
  end
end
