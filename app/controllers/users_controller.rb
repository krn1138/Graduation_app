class UsersController < ApplicationController
  def show
    # binding.irb
    @user = current_user
    @guest = current_user.guest
    @host = current_user.host
  end
end
