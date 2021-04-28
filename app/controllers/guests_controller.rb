class GuestsController < ApplicationController
  before_action :set_guest, only: %i[ show edit update destroy ]

  def new
    @guest = Guest.new
  end

  def create
    @guest = current_user.build_guest(guest_params)

    if @guest.save
      redirect_to root_path, notice: "情報を登録しました！"
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  private
    def set_guest
      @guest = Guest.find(params[:id])
    end

    def guest_params
      params.require(:guest).permit(:name, :address, :country)
    end
end
