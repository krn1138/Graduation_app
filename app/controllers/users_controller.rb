class UsersController < ApplicationController
  def show
    @user = current_user
    # @guest = current_user.guest
    # @host = current_user.host
  end
end
