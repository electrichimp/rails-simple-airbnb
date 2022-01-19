# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Flat.destroy_all

10.times do
  Flat.create(name: Faker::Address.street_address,
              address: "#{Faker::Address.city} - #{Faker::Address.country}",
              description: Faker::Lorem.sentence,
              price_per_night: rand(50..500),
              number_of_guests: rand(1..5),
              image_url: "https://source.unsplash.com/random/500x300/?airbnb/#{rand(1..20)}")
end
