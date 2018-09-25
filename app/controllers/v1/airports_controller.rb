module V1
  class AirportsController < ApplicationController
    def index
      airports = Airport.all.order(:name)
      json_response(airports)
    end

    def auto_complete
      results = Airport.search(airport_params[:q], fields: [:name, :iata, :country, :city], select: [:name])
      suggestions = results.size.zero? ? [] : results.hits.map { |r| { name: r['_source']['name'], id: r['_id'] } }
      render json: { suggestions: suggestions }
    end

    private

    def airport_params
      params.permit(:q)
    end
  end
end
