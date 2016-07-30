class AddLocationToChildren < ActiveRecord::Migration
  def change
    add_reference :children, :location, index: true, foreign_key: true
  end
end
