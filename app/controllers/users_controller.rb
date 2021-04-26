class UsersController < ApplicationController
  before_action :different_user_check, only: [:show]

  def index
    # @users = User.all
    # @guests = current_user.guest
    # @hosts = current_user.host
  end

  def show
    # binding.irb
    @user = current_user
    @guest = current_user.guest
    @host = current_user.host
    @hostel = Hostel.pluck(:host_id, :id)
    # @hostel = Hostel.where(host_id: current_user.id)
    # @hostel = Hostel.find(hostel)
  end

  private
  def different_user_check
    @user = User.find(params[:id])
    if current_user.id != @user.id
      redirect_to root_path, notice: "あなたのページはここです"
    end
  end
end
