class HuntDuckCount < ApplicationRecord
    belongs_to :hunt, class_name: "Hunt"
    belongs_to :duck, class_name: "Duck"
end
