class Hostel < ApplicationRecord
    belongs_to :host, optional: true
end
