class User < ApplicationRecord
  has_one :host
  has_one :guest
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: {
    ゲスト:0, ホスト:1
  }
end
