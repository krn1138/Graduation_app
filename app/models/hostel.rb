class Hostel < ApplicationRecord
    belongs_to :host
    validates :name, :address, :kind, :walk_city_time, :price, :phone_number, :details, :country, :capacity, :around_information, presence: true

  #   enum kind: {
  #     single: 0, twin: 1, dormitory: 2
  # }
  validates :phone_number,  presence: true, length: { maximum: 11 },
                            format: { with: /\A[0-9]+\z/ }

  validate :validate_images
  private
  def validate_images
    num = images.count
    return if  num >= 1 && num <= 5
    errors.add(:images, 'は1ファイル以上5ファイル以下でアップロードしてください')
  end
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  mount_uploaders :images, ImageUploader
end