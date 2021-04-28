class UsersController < ApplicationController
  before_action :different_user_check, only: [:show]

  def index
  end

  def show
    @user = current_user
    @guest = current_user.guest
    @host = current_user.host
    # binding.irb
    @hostel = @host.hostel if current_user.host
  end

  private
  def different_user_check
    @user = User.find(params[:id])
    if current_user.id != @user.id
      redirect_to root_path, notice: "あなたのページはここです"
    end
  end
end
