class WikipediaDescriptor
  def self.search(iata:)
    response = HTTP.get("https://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro&explaintext&redirects=1&titles=#{iata}")
    response.parse['query']['pages'].first[1]['extract']
  end
end
