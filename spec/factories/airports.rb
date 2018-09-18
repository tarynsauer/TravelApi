FactoryBot.define do
  factory :airport do
    name { Faker::Name.name }
    city { Faker::Address.city }
    description { Faker::Lorem.sentence }
    iata { Faker::Lorem.characters(3) }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.latitude }
    timezone { Faker::Address.time_zone }
    utc_offset { Faker::Number.between(-43_200, 50_400).to_s }
  end
end
