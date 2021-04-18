class Host < ApplicationRecord
  has_one :hostel, dependent: :destroy
  belongs_to :user

  validates :name, presence: true

end