class HostelsController < ApplicationController
  before_action :set_hostel, only: %i[ show edit update destroy ]

  def index
    @q = Hostel.ransack(params[:q])
    @hostels = @q.result(distinct: true)
  end

  def show
  end

  private
  # http://localhost:3000/hostels/1 => params[:id] => 1
  # R -> C -> @ -> V -> form, url -> R -> params -> C -> V
  def set_hostel
    @hostel = Hostel.find(params[:id])
  end
  

  def hostel_params
    params.require(:hostel).permit(:name, :contentname, :address, :kind, :walk_city_time, :price,
                                   :image, :phone_number, :details, :country, :capacity, 
                                   :latitude, :longitude, :around_information)
  end
end
