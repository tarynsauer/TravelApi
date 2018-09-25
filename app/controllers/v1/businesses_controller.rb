module V1
  class BusinessesController < ApplicationController
    def search
      airport = Airport.find(business_params[:id])
      results = YelpClient.search(airport)['businesses']
      json_response(results)
    end

    private

    def business_params
      params.permit(:id)
    end
  end
end
