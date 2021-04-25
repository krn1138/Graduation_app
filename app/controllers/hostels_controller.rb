class HostelsController < ApplicationController
  before_action :set_hostel, only: %i[ show edit update destroy ]
  before_action :set_search_hostel
  before_action :hostel_registration, only: [:new, :create]
  # before_action :not_movie
  # before_action :check_not_hostel_edit, only: [:edit, :update, :destroy]
  PER = 7
  def index
    @hostels = Hostel.page(params[:page]).per(PER)
    # @users = current_user
    # @guest = current_user.guest
    # @host = current_user.host
    # @users = User.all
    # @hostel = Hostel.find(1)
  end

  def new
    @hostel = Hostel.new
  end

  def create
    # binding.irb
    # @hostel = Hostel.new(hostel_params)
    # @hostel.host_id = current_user.host.id
    @host = current_user.host
    @hostel = @host.build_hostel(hostel_params)
    # binding.irb
    # if params[:back]
    #   render :new
    # end
    if params[:back]
      render :new
    else

      if @hostel.save
        redirect_to hostel_path(@hostel.id), notice: "宿を登録しました！"
      else
        render :new
      end
    end
    # if @hostel.build_host.save
    #   redirect_to hostels_path, notice: "宿を登録しました！"
    # else
    #   render :new
    # end
  end


  def show
    @users = User.all
    # @guest = current_user.guest
    @host = current_user.host
    # @users = User.all
    # @message_room = Message_room.find(params[:message_room_id])
    # @messages = @message_room.messages
    # @message_rooms = Message_room.all
  end

  def edit
  end

  def confirm
    # binding.irb
    @host = current_user.host
    @hostel = @host.build_hostel(hostel_params)
    # @hostel = current_user.hostel.build(hostel_params)

    # @hostel = Hostel.new(hostel_params)
    # @hostel.id = params[:id]
    # binding.irb
    # if params[:back]
    #   render :new
    # end
    @hostel.id = params[:id]
    render :new if @hostel.invalid?
    # @hostel = Hostel.new(hostel_params)
    # render :new if @hostel.invalid?
  end

  def update
    # binding.irb
    if @hostel.update(hostel_params)
      redirect_to hostels_path, notice: "編集しました"
    else
      render :edit
    end
  end

  def destroy
    @hostel.destroy
    redirect_to root_path, notice:"宿を削除しました！"
  end

  private
  # http://localhost:3000/hostels/1 => params[:id] => 1
  # R -> C -> @ -> V -> form, url -> R -> params -> C -> V
  def set_hostel
    # binding.irb
    @hostel = Hostel.find(params[:id])
  end


  def hostel_params
    # binding.irb
    params.require(:hostel).permit(:name, :address, :kind, :walk_city_time, :price,
                                   :phone_number, :details, :country, :capacity,
                                   :latitude, :longitude, :around_information, {images: []}, :images_cache)
  #   params.require(:hostel).permit(:name, :address, :kind, :walk_city_time, :price,
  #                                  :phone_number, :details, :country, :capacity,
  #                                  :latitude, :longitude, :around_information, {images: []})
  end

  def hostel_registration
    unless current_user.host
      redirect_to root_path, notice: "ホスト権限はありません"
    end
  end

  # def check_not_hostel_edit
  #   @host = Host.find(params[:id])
  #   if @host.id != @hostel.host.id
  #     redirect_to  root_path, notice:"編集できません"
  #   end
  # end
end
