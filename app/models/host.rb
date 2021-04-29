class Host < ApplicationRecord
  has_one :hostel, dependent: :destroy
  belongs_to :user
  validates :phone_number,  presence: true, length: { maximum: 11 }

  validates :name, presence: true

end