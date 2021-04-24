class Hostel < ApplicationRecord
    belongs_to :host
    validates :name, :address, :kind, :walk_city_time, :price, :phone_number, :details, :country, :capacity, :around_information, presence: true

    enum kind: {
      single: 0, twin: 1, dormitory: 2
  }

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  mount_uploaders :images, ImageUploader

  # validate :validate_images
  # private
  # def validate_images
  #   num = images.count
  #   return if  num >= 1 && num <= 5
  #   errors.add(:images, ‘は1ファイル以上5ファイル以下でアップロードしてください’)
  # end
  # geocoded_by :address
  # after_validation :geocode
  # before_action do
  #   @message_room = Message_room.find(params[:message_room_id])
  # end

end