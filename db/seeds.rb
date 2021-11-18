puts "Cleaning the database..."
Booking.destroy_all

puts "Cleaning the database..."
Car.destroy_all

puts "Cleaning the database..."
User.destroy_all
puts 'Creating 10 fake users...'
user1 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: rand(18..100),
  drivers_license: Faker::DrivingLicence.british_driving_licence,
  address: "Berlin",
  email: "user1@users.com",
  password: "123456",
  photo_url: Faker::Avatar.image
)
user2 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: rand(18..100),
  drivers_license: Faker::DrivingLicence.british_driving_licence,
  address: "Paris",
  email: "user2@users.com",
  password: "123456",
  photo_url: Faker::Avatar.image
)
user3 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: rand(18..100),
  drivers_license: Faker::DrivingLicence.british_driving_licence,
  address: "Toronto",
  email: "user3@users.com",
  password: "123456",
  photo_url: Faker::Avatar.image
)

user4 = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  age: rand(18..100),
  drivers_license: Faker::DrivingLicence.british_driving_licence,
  address: "Frankfurt",
  email: "user4@users.com",
  password: "123456",
  photo_url: Faker::Avatar.image
  )

lambo = Car.create!(
    user: user1,
    brand: "Lamborghini",
    car_type: Faker::Vehicle.model,
    description: Faker::Vehicle.car_type,
    price: rand(1000..1_000_000),
    location: "Berlin",
    car_image: "https://images.unsplash.com/photo-1599135343721-6c8d4c1b8b58?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1985&q=80"
  )

ferrari = Car.create!(
    user: user1,
    brand: "Ferrari",
    car_type: Faker::Vehicle.model,
    description: Faker::Vehicle.car_type,
    price: rand(1000..1_000_000),
    location: "Paris",
    car_image: "https://images.unsplash.com/photo-1592198084033-aade902d1aae?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1470&q=80"
  )

lexus = Car.create!(
    user: user1,
    brand: "Lexus",
    car_type: Faker::Vehicle.model,
    description: Faker::Vehicle.car_type,
    price: rand(1000..1_000_000),
    location: "Munich",
    car_image: "https://images.unsplash.com/photo-1577496549804-8b05f1f67338?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1470&q=80"
  )
aston = Car.create!(
    user: user1,
    brand: "Aston Martin",
    car_type: Faker::Vehicle.model,
    description: Faker::Vehicle.car_type,
    price: rand(1000..1_000_000),
    location: "Sao Paolo",
    car_image: "https://images.unsplash.com/photo-1589469526531-7d31afa07f3a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1469&q=80"
  )

tesla = Car.create!(
    user: user2,
    brand: "Tesla",
    car_type: Faker::Vehicle.model,
    description: Faker::Vehicle.car_type,
    price: rand(1000..1_000_000),
    location: "Dubai",
    car_image: "https://images.unsplash.com/photo-1576221162298-3d9f04e9f661?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1470&q=80"
  )

porsche = Car.create!(
    user: user3,
    brand: "Porsche",
    car_type: Faker::Vehicle.model,
    description: Faker::Vehicle.car_type,
    price: rand(1000..1_000_000),
    location: "Berlin",
    car_image: "https://images.unsplash.com/photo-1503376780353-7e6692767b70?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1470&q=80"
  )

mercedes = Car.create!(
    user: user3,
    brand: "Mercedes-Benz",
    car_type: Faker::Vehicle.model,
    description: Faker::Vehicle.car_type,
    price: rand(1000..1_000_000),
    location: "Frankfurt",
    car_image: "https://images.unsplash.com/photo-1618843479313-40f8afb4b4d8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1470&q=80"
  )

bmw = Car.create!(
    user: user1,
    brand: "BMW",
    car_type: Faker::Vehicle.model,
    description: Faker::Vehicle.car_type,
    price: rand(1000..1_000_000),
    location: "Paris",
    car_image: "https://images.unsplash.com/flagged/photo-1553505192-acca7d4509be?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1490&q=80"
  )

volvo = Car.create!(
    user: user1,
    brand: "Volvo",
    car_type: Faker::Vehicle.model,
    description: Faker::Vehicle.car_type,
    price: rand(1000..1_000_000),
    location: "Geneva",
    car_image: "https://images.unsplash.com/photo-1557323137-bd6bd20fe022?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1470&q=80"
  )

audi = Car.create!(
    user: user2,
    brand: "Audi",
    car_type: Faker::Vehicle.model,
    description: Faker::Vehicle.car_type,
    price: rand(1000..1_000_000),
    location: "Toronto",
    car_image: "https://images.unsplash.com/photo-1502161254066-6c74afbf07aa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1471&q=80"
  )

  Booking.create!(
    user: user4,
    car: audi,
    start_on: Faker::Date.backward(days: 14),
    end_on: Faker::Date.forward(days: 14)
  )

  Booking.create!(
    user: user4,
    car: ferrari,
    start_on: Faker::Date.backward(days: 14),
    end_on: Faker::Date.forward(days: 14)
  )

  Booking.create!(
    user: user2,
    car: mercedes,
    start_on: Faker::Date.backward(days: 14),
    end_on: Faker::Date.forward(days: 14)
  )

  Booking.create!(
    user: user1,
    car: tesla,
    start_on: Faker::Date.backward(days: 14),
    end_on: Faker::Date.forward(days: 14)
  )

  Booking.create!(
    user: user3,
    car: aston,
    start_on: Faker::Date.backward(days: 14),
    end_on: Faker::Date.forward(days: 14)
  )
