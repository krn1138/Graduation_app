class GuestsController < ApplicationController
  before_action :set_guest, only: %i[ show edit update destroy ]

  def new
    @guest = Guest.new
  end

  def create
    #アソシエーション組まないと
    @guest = current_user.guests.build(guest_params)

    if @guest.save
      redirect_to root_path, notice: "Taskを作成しました！"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guest
      @guest = Guest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def guest_params
      params.require(:guest).permit(:name, :address, :country)
    end
end
