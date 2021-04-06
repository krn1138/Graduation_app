class Hostel < ApplicationRecord
    belongs_to :host, optional: true

    enum kind: {
      single: 0, twin: 1, dormitory: 2
  }

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
