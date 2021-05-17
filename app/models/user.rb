class User < ApplicationRecord
  has_one :host, dependent: :destroy
  has_one :guest, dependent: :destroy
  has_many :message_rooms, dependent: :destroy
  has_many :messages, dependent: :destroy
  validates :name, presence: true

  validates_associated :host

  accepts_nested_attributes_for :guest, allow_destroy: true, reject_if: :all_blank, update_only: true
  accepts_nested_attributes_for :host, allow_destroy: true, reject_if: :all_blank, update_only: true

  mount_uploader :image, ImageUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: {
    guest: 0, host: 1
  }

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
    user.password = SecureRandom.urlsafe_base64
    user.name = "ゲスト"
    end
  end
end
