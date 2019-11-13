# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "deleting old data..."
Flat.destroy_all

puts "creating new data..."

10.times do
  flats_attributes = [
    name: Faker::Commerce.product_name,
    address: Faker::Address.street_address,
    description: Faker::Restaurant.description ,
    price_per_night: rand(25..99),
    number_of_guests: rand(1..4)
  ]
  Flat.create!(flats_attributes)
end
puts "done!"
