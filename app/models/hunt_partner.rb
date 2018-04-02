class HuntPartner < ApplicationRecord
    belongs_to :hunt, class_name: "Hunt"
    belongs_to :partner, class_name: "Partner"
end
