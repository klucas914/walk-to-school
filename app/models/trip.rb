class Trip < ActiveRecord::Base
  has_many :locations
  belongs_to :child
  belongs_to :archive
  validates :child_name, presence: true, length: { minimum: 3 }
  validates :starting_point, presence: true
  validates :destination, presence: true
end
