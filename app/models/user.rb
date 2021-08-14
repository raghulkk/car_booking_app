class User < ApplicationRecord

    validates_presence_of :name

    has_many :bookings
    
    has_many :cars, through: :bookings

end
