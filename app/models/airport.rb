class Airport < ApplicationRecord
  validates_presence_of :description, :iata, :latitude, :longitude,
    :name, :timezone, :utc_offset
end
