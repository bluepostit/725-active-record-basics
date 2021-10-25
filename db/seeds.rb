# This is where you can create initial data for your app.
require 'faker'

puts 'Deleting restaurants...'
Restaurant.destroy_all
puts 'Done'

puts 'Creating restaurants...'
taco_bell = Restaurant.new(name: 'Taco Bell', address: 'Madrid')
taco_bell.save!

Restaurant.create!(name: "McDonald's", address: 'New York City')

# Generate some random data with Faker!
100.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::TvShows::MichaelScott.quote,
    rating: rand(1..5)
  )
end
puts 'Done'
