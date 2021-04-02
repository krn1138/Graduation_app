class Host < ApplicationRecord
    has_one :hostel
    belongs_to :user

end
