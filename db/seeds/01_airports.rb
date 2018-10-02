require 'csv'

Business.destroy_all
Airport.destroy_all

count = 0
csv = CSV.read('./tmp/referenced.csv', headers: true)
csv.each do |row|
  if !row[12].nil?
    iata = row[4].to_s.strip
    latitude = row[7].to_f
    longitude = row[8].to_f

    geocoder = Geocoder.search([latitude, longitude]).first
    description = WikipediaDescriptor.search(iata: iata)

    a = Airport.new(
      city: geocoder.city || geocoder.county,
      country: geocoder.country,
      description: description,
      faa_lid: row[6].to_s.strip,
      iata: iata,
      icao: row[5].to_s.strip,
      location: geocoder.display_name,
      name: row[0].to_s.strip,
      latitude: latitude,
      longitude: longitude,
      state: geocoder.state || geocoder.county,
      timezone: row[9].to_s.strip,
      total_flights: row[12].gsub(/[\s,]/ ,"").to_i,
      website: row[3].to_s.strip,
      utc_offset: row[10].to_s.strip,
    )
    if a.valid?
      a.save!
      count += 1
    else
      puts a.errors.full_messages
    end
  end
end

Airport.reindex

puts "Created #{count} Airports"
