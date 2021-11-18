puts "Cleaning the database..."
Car.destroy_all

puts "Cleaning the database..."
Booking.destroy_all

puts "Cleaning the database..."
User.destroy_all
puts 'Creating 10 fake users...'
user1 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: rand(18..100),
  drivers_license: Faker::DrivingLicence.british_driving_licence,
  address: Faker::Address.city,
  email: "user1@users.com",
  password: "123456"
)
user2 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: rand(18..100),
  drivers_license: Faker::DrivingLicence.british_driving_licence,
  address: Faker::Address.city,
  email: "user2@users.com",
  password: "123456"
)
user3 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: rand(18..100),
  drivers_license: Faker::DrivingLicence.british_driving_licence,
  address: Faker::Address.city,
  email: "user3@users.com",
  password: "123456"
)
puts 'Creating 10 fake cars...'
cars = []
10.times do
  cars << Car.create!(
    user: user1,
    brand: Faker::Vehicle.manufacture,
    car_type: Faker::Vehicle.model,
    description: Faker::Vehicle.car_type,
    price: rand(1000..1_000_000),
    location: Faker::Address.city
  )
end

puts 'Creating 10 fake bookings...'
3.times do
  Booking.create!(
    user: user1,
    car: cars.sample,
    start_on: Faker::Date.backward(days: 14),
    end_on: Faker::Date.forward(days: 14)
  )
end

3.times do
  Booking.create!(
    user: user3,
    car: cars.sample,
    start_on: Faker::Date.backward(days: 14),
    end_on: Faker::Date.forward(days: 14)
  )
end
