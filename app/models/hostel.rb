class Hostel < ApplicationRecord
    belongs_to :host
    validates :name, :address, :kind, :walk_city_time, :price, :phone_number, :details, :country, :capacity, :around_information, presence: true

    enum kind: {
      single: 0, twin: 1, dormitory: 2
  }

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  mount_uploaders :images, ImageUploader
end