class Host < ApplicationRecord
  has_one :hostel, dependent: :destroy
  belongs_to :user
  validates :phone_number,  presence: true, length: { maximum: 11 },
                            format: { with: /\A[0-9]+\z/ }
  validates :name,  presence: true


  validates :name, presence: true

end