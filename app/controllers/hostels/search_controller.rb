class Hostels::SearchController < ApplicationController
  def show
    # @host = current_user.host
    # @hostel_confirmation = @host.hostel if current_user.host?

    @message_rooms = MessageRoom.all

    @hostel = Hostel.new
    @q = Hostel.ransack(params[:q])
  end
end