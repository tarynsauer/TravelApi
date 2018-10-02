Business.destroy_all

count = 0

Airport.find_each do |airport|
  businesses = YelpClient.search(airport)['businesses']
  businesses.each do |business|
    Business.create(
      yelp_id: business['id'],
      airport_id: airport.id,
      payload: business,
    )
    count += 1
  end

  puts "Added #{businesses.count} businesses to #{airport.name} airport"
end

puts "\nSeeded #{count} total businesses"
