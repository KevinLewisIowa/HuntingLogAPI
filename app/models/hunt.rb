class Hunt < ApplicationRecord
    belongs_to :user, class_name: "User"
    belongs_to :location, class_name: "Location"
    
    has_many :hunt_partners, class_name: "HuntPartner",
                                foreign_key: "hunt_id"
                                
    has_many :hunt_duck_counts, class_name: "HuntDuckCount",
                                foreign_key: "hunt_id"
end
