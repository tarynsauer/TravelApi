module V1
  class AirportsController < ApplicationController
    def index
      airports = Airport.all.order(:name)
      json_response(airports)
    end
  end
end
