class Location < ActiveRecord::Base
  has_many :children, through: :trips
  has_many :trips, through: :children
end
