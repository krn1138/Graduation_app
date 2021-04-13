class Hostel < ApplicationRecord
    belongs_to :host, optional: true
    # validates :name, :address, :kind, :walk_city_time, :price, :images, :phone_number, :details, :country, :capacity, :around_information, presence: true

    enum kind: {
      single: 0, twin: 1, dormitory: 2
  }

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  mount_uploaders :images, ImageUploader

  # geocoded_by :address
  # after_validation :geocode
  # before_action do
  #   @message_room = Message_room.find(params[:message_room_id])
  # end

end