class User < ApplicationRecord
  has_one :host, dependent: :destroy
  has_one :guest, dependent: :destroy

  accepts_nested_attributes_for :guest, allow_destroy: true, reject_if: :all_blank, update_only: true
  accepts_nested_attributes_for :host, allow_destroy: true, reject_if: :all_blank, update_only: true

  mount_uploader :image, ImageUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # def update_without_current_password(params, *options)
  #   params.delete(:current_password)

  #   if params[:password].blank? && params[:password_confirmation].blank?
  #     params.delete(:password)
  #     params.delete(:password_confirmation)
  #   end

  #   result = update_attributes(params, *options)
  #   clean_up_passwords
  #   result
  # end

  enum role: {
    guest: 0, host: 1
  }
end
