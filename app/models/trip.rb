class Trip < ActiveRecord::Base
  validates :child_name, presence: true, length: { minimum: 3 }
  validates :starting_point, presence: true
  validates :destination, presence: true
end
