class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  BRAND = ['Ferrari', 'Porsche', 'Lamborghini', 'Aston Martin', 'Rolls Royce',
    'Audi', 'Mercedes', 'Tesla', 'BMW', 'Lexus', 'Jaguar', 'Cadillac', 'Maserati',
    'Bugatti', 'Volvo', 'Land Rover']

  validates :brand, presence: true
  validates :car_type, presence: true
  validates :location, presence: true
end
