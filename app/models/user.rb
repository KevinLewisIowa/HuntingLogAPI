class User < ApplicationRecord
    has_secure_password
    
    has_many :ducks
    has_many :locations
    has_many :partners
    has_many :hunts
end
