class AddTripsAndChildrenToLocation < ActiveRecord::Migration
  def change
    add_reference :locations, :trips, index: true, foreign_key: true
    add_reference :locations, :children, index: true, foreign_key: true
  end
end
