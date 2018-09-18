module V1
  class AirportsController < ApplicationController
    def index
      @airports = Airport.all.paginate(page: params[:page], per_page: 20)
      json_response(@airports)
    end
  end
end
