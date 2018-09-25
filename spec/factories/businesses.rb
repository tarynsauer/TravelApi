FactoryBot.define do
  factory :business do
    id { Faker::Internet.password }
    airport_id { 1 }
    payload { '{}' }
  end
end
