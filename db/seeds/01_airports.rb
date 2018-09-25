require 'csv'

Business.destroy_all
Airport.destroy_all

count = 0
csv = CSV.read('./../tmp/referenced.csv', headers: true)
csv.each do |row|
  if !row[12].nil?
    a = Airport.new(
      name: row[0].to_s.strip,
      city: row[1].to_s.strip,
      description: row[2].to_s.strip,
      website: row[3].to_s.strip,
      iata: row[4].to_s.strip,
      icao: row[5].to_s.strip,
      faa_lid: row[6].to_s.strip,
      latitude: row[7].to_f,
      longitude: row[8].to_f,
      timezone: row[9].to_s.strip,
      utc_offset: row[10].to_s.strip,
      country: row[11].to_s.strip,
      total_flights: row[12].gsub(/[\s,]/ ,"").to_i,
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
