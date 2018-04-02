class Duck < ApplicationRecord
    belongs_to :user, class_name: "User"
    
    has_many :hunt_duck_counts, class_name: "HuntDuckCount",
                                foreign_key: "duck_id"
end
