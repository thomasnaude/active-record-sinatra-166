require 'faker'

Restaurant.destroy_all

100.times do
  Restaurant.create!(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    rating: rand(1..100)
  )
end
