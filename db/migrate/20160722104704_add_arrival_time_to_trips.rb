class AddArrivalTimeToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :arrival_time, :timestamp
  end
end
