class AirportsController < ApplicationController
  def index
    json_response(Airport.all)
  end
end
