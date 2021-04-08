class HostelsController < ApplicationController
  before_action :set_hostel, only: %i[ show edit update destroy ]
  before_action :set_search_hostel
  before_action :hostel_registration, only: [:new, :create]

  def index
    @hostel = Hostel.find(1)
  end

  def new
    @hostel = Hostel.new
  end

  def create
    # @hostel = host.build_hostel(hostel_params)
    @hostel = Hostel.new(hostel_params)
    @hostel.host_id = current_user.host.id

    if @hostel.save
      redirect_to hostels_path, notice: "宿を登録しました！"
    else
      render :new
    end

    # if @hostel.build_host.save
    #   redirect_to hostels_path, notice: "宿を登録しました！"
    # else
    #   render :new
    # end
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

  def hostel_registration
    unless current_user.host
      redirect_to root_path, notice: "ホスト権限はありません"
    end
  end
end
