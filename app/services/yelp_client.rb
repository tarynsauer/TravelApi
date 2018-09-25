class YelpClient
  SEARCH_LIMIT = 25

  def self.search(airport)
    params = {
      longitude: airport.longitude,
      latitude: airport.latitude,
      limit: SEARCH_LIMIT
    }

    response = HTTP
      .auth("Bearer #{ENV['YELP_API_KEY']}")
      .get(ENV['YELP_API_BUSINESS_SEARCH_HOST'], params: params)
    response.parse
  end
end
