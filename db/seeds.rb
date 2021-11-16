# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning the database..."
Car.destroy_all
puts 'Creating 10 fake cars...'

10.times do
  Car.create(
    brand: Faker::Vehicle.manufacture,
    car_type: Faker::Vehicle.model,
    description: Faker::Vehicle.standard_specs,
    price: rand(1000..1_000_000),
    location: Faker::Address.city
  )
end
