module V1
  class BusinessesController < ApplicationController
    def search
      airport = Airport.find(business_params[:id])
      businesses = airport.businesses.map { |b| b.payload }
      json_response(businesses)
    end

    private

    def business_params
      params.permit(:id)
    end
  end
end
