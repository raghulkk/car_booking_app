class Car < ApplicationRecord

  has_many :users, through: :bookings
  
end
