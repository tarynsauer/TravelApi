class AirportSerializer < ActiveModel::Serializer
  attributes :id, :city, :country, :description, :iata, :icao, :faa_lid, :latitude, :longitude,
    :name, :timezone, :total_flights, :utc_offset, :website
end
