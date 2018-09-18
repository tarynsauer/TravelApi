class AirportSerializer < ActiveModel::Serializer
  attributes :id, :description, :iata, :latitude, :longitude,
    :name, :timezone, :utc_offset
end
