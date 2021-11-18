class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  BRAND = ['Ferrari', 'Porsche', 'Lamborghini', 'Aston Martin', 'Rolls Royce',
    'Audi', 'Mercedes', 'Tesla', 'BMW', 'Lexus', 'Jaguar', 'Cadillac', 'Maserati',
    'Bugatti', 'Volvo', 'Land Rover']

  validates :brand, presence: true
  validates :car_type, presence: true
  validates :location, presence: true

  def self.brands
    ['Ferrari', 'Porsche', 'Lamborghini', 'Aston Martin', 'Rolls Royce',
    'Audi', 'Mercedes', 'Tesla', 'BMW', 'Lexus', 'Jaguar', 'Cadillac', 'Maserati',
    'Bugatti', 'Volvo', 'Land Rover']
  end

  def self.images
    url = 'https://images.unsplash.com/photo-1535360392524-dedff4c8b227?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2940&q=80'
    [url, 'https://images.unsplash.com/photo-1604010378798-bd4aa2853647?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1740&q=80', 'https://images.unsplash.com/photo-1607615640588-c49a4bd20a5c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bGFtYm9yZ2hpbmklMjBsb2dvfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60', 'https://images.unsplash.com/photo-1569399081479-fffa3608c28c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1750&q=80', 'https://images.unsplash.com/photo-1605905892585-6debe9510d87?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80', 'https://images.unsplash.com/photo-1564343003979-e531807e5b6e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1740&q=80','https://images.unsplash.com/photo-1624172541682-14675a0db485?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1740&q=80','https://images.unsplash.com/photo-1612810806695-30f7a8258391?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1374&q=80','https://images.unsplash.com/photo-1521058001910-55b77aba2203?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1734&q=80','https://images.unsplash.com/photo-1628188869280-0210bf9b2dc2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1740&q=80','https://images.unsplash.com/photo-1629184643289-921943446e3c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1742&q=80','https://images.unsplash.com/photo-1625502092763-200297cf67e5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1740&q=80','https://images.unsplash.com/photo-1535360196185-5f8e2a279419?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80','https://images.unsplash.com/photo-1597509560962-69bef7620c0d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1740&q=80','https://images.unsplash.com/photo-1601026968316-caf71eab96d8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1740&q=80','https://images.unsplash.com/photo-1569926933177-4d8a92411deb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1742&q=80',]
  end
end
