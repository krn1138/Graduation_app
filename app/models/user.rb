class User < ApplicationRecord
  has_one :host, dependent: :destroy
  has_one :guest, dependent: :destroy

  accepts_nested_attributes_for :host, guest, allow_destroy: true, reject_if: :all_blank
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: {
    ゲスト:0, ホスト:1
  }
end
