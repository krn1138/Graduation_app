class HostelsController < ApplicationController
  before_action :set_hostel, only: %i[ show edit update destroy ]
  before_action :set_search_hostel
  before_action :hostel_registration, only: [:new, :create]
  before_action :check_not_hostel_edit, only: [:edit, :update, :destroy]

  def index
  end

  def new
    @hostel = Hostel.new
  end

  def create
    @host = current_user.host
    @hostel = @host.build_hostel(hostel_params)
    if params[:back]
      render :new
    else
      if @hostel.save
        redirect_to hostel_path(@hostel.id), notice: "宿を登録しました！"
      else
        render :new
      end
    end
  end

  def show
    @users = User.all
    @host = current_user.host
  end

  def edit
  end

  def confirm
    @host = current_user.host
    @hostel = @host.build_hostel(hostel_params)
    @hostel.id = params[:id]
    render :new if @hostel.invalid?
  end

  def update
    if @hostel.update(hostel_params)
      redirect_to hostel_path(@hostel.id), notice: "編集しました"
    else
      render :edit
    end
  end

  def destroy
    @hostel.destroy
    redirect_to root_path, notice:"宿を削除しました！"
  end

  private
  def set_hostel
    @hostel = Hostel.find(params[:id])
  end

  def hostel_params
    params.require(:hostel).permit(:name, :address, :kind, :walk_city_time, :price,
                                   :phone_number, :details, :country, :capacity,
                                   :latitude, :longitude, :around_information, {images: []}, :images_cache)
  end

  def hostel_registration
    unless current_user.host
      redirect_to root_path, notice: "ホスト権限はありません"
    end
  end

  def check_not_hostel_edit
    if current_user.host != @hostel.host
      redirect_to  root_path, notice:"編集できません"
    end
  end
end
