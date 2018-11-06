class WikipediaDescriptor
  def self.search(iata:)
    response = HTTP.get("https://en.wikipedia.org/w/api.php?format=json&action=query&prop=extracts&exintro&explaintext&redirects=1&titles=#{iata}")
    parsed_response = response.parse['query']['pages'].first[1]
    description = parsed_response['extract']
    url = "https://en.wikipedia.org/wiki/#{CGI::escape(parsed_response['title'].gsub! /\s/, '_')}"
    { description: description, wikipedia_url: url }
  end
end
