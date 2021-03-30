class HostelsController < ApplicationController
  before_action :set_hostel, only: %i[ show edit update destroy ]

  def index
    # binding.irb
    @q = Hostel.ransack(params[:q])
    @hostels = @q.result(distinct: true)
  end

  def show
  end

  private
  def set_hostel
    @hostel = Hostel.find(params[:id])
  end
  

  # Only allow a list of trusted parameters through.
  def hostel_params
    params.require(:hostel).permit(:name, :contentname, :address, :kind, :walk_city_time, :price,
                                   :image, :phone_number, :details, :country, :capacity, 
                                   :latitude, :longitude, :around_information)
  end
end
