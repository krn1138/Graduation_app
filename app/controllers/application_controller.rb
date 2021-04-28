class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # before_action :hostel_confirmation
  # before_action :configure_permitted_parameters, if: :devise_controller?

  # before_action :configure_account_update_params, if: :devise_controller?
  # PER = 7
  def set_search_hostel
    if params[:q] != nil
        # binding.irb
        params[:q]['name_or_country_cont_any'] = params[:q]['name_or_country_cont_any'].to_s.split(/[\p{blank}\s]+/)
        @q = Hostel.ransack(params[:q])
        @hostels = @q.result(distinct: true)
        # @hostels = @q.result(distinct: true).page(params[:page]).per(PER)
        # @hostels = Hostel.page(params[:page]).per(PER)
      # else
      #   @q = Hostel.ransack(params[:q])
      #   @hostels = @q.result(distinct: true)
    end
      # @q = Hostel.ransack(params[:q])
      # @hostels = @q.result(distinct: true)
  end

  def not_movie
    render layout: false unless "hostels/search#show"
  end
  # def set_hostel
  #   # binding.irb
  #   @hostel = Hostel.find(params[:id])
  # end
  # protected
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:role, :name, :image])
  # end

# def hostel_confirmation
#   @host = current_user.host
#   @hostel_confirmation = @host.hostel if current_user.host?
# end

  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [
  #     :name,
  #     host_attributes: [
  #       :name,
  #       :phone_number,
  #       :profile,
  #       :image,
  #       :country,
  #       :birthday,
  #       :user_id
  #       ],
  #     guest_attributes: [
  #       :address,
  #       :phone_number,
  #       :gender,
  #       :country,
  #       :latitude,
  #       :longitude,
  #       :image,
  #       :birthday,
  #       :user_id
  #       ]
  #     ]
  #   )
  # end
end
