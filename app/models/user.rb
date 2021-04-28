class User < ApplicationRecord
  has_one :host, dependent: :destroy
  has_one :guest, dependent: :destroy
  has_many :message_rooms, dependent: :destroy
  has_many :messages, dependent: :destroy
  validates :name, presence: true

  accepts_nested_attributes_for :guest, allow_destroy: true, reject_if: :all_blank, update_only: true
  accepts_nested_attributes_for :host, allow_destroy: true, reject_if: :all_blank, update_only: true

  mount_uploader :image, ImageUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: {
    guest: 0, host: 1
  }
end
