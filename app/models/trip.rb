class Trip < ActiveRecord::Base
  has_many :locations
  belongs_to :child
  belongs_to :archive
end
