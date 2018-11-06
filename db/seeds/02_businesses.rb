Business.destroy_all

count = 0

Airport.find_each do |airport|
  businesses = YelpClient.search(airport)['businesses']
  businesses.each do |business|
    b = Business.new(
      yelp_id: business['id'],
      airport_id: airport.id,
      payload: business,
    )
    if b.valid?
      b.save!
      count += 1
    else
      puts b.errors.full_messages
    end
  end

  puts "Added #{businesses.count} businesses to #{airport.name} airport"
end

puts "\nSeeded #{count} total businesses"
