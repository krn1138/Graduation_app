# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  #   binding.irb
  # end

  # GET /resource/edit
  # def edit
  #   super
  #   @guest = Guest.find(params[:id])
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role, :name])

    devise_parameter_sanitizer.permit(:account_update, keys: [
      :name, 
      :email, 
      :password, 
      :password_confirmation,
    host_attributes: [
      :name,
      ;phone_number,
      :profile,
      :image,
      :country,
      :birthday,
      :user_id,
    guest_attributes: [
      :address,
      :phone_number,
      :gender,
      :country,
      :latitude,
      :longitude,
      :image,
      :birthday,
      :user_id
      ]
    )

  end



  # The path used after sign up.
  def after_sign_up_path_for(resource)
    # binding.irb
    super(resource)
    binding.irb
    if resource[:role] == "ゲスト"
      new_guest_path
    else
      new_host_path
    end
  end

  # def configure_guest_profile_params
  #   devise_parameter_sanitizer.permit(:sign_up,
  #     keys: [:name, :category_id, guest_attributes: [:campany_name, :campany_logo, :category_id, :campany_url, :tel, :staff_last_name_kana, :staff_first_name_kana]])
  # end

  # def configure_host_profile_params
  #   devise_parameter_sanitizer.permit(:sign_up,
  #     keys: [:name, :category_id, host_attributes: [:campany_name, :campany_logo, :category_id, :campany_url, :tel, :staff_last_name_kana, :staff_first_name_kana]])
  # end

  # def after_update_path_for(resource)
  #   user_path(id: current_user.id)
  # end
  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
