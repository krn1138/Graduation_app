class Host < ApplicationRecord
    belongs_to :user
    has_one :hostel
end
