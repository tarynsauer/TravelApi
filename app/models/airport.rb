class Airport < ApplicationRecord
  searchkick
  validates_presence_of :iata, :latitude, :longitude, :name, :timezone, :utc_offset
  has_many :businesses
end
