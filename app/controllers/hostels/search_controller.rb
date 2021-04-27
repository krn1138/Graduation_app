class Hostels::SearchController < ApplicationController
  # before_action :set_search_hostel, only: %i[ index ]
  #   def index
  #   end
def new
end
    def show
      # @host = current_user.host
      # @hostel = @host.hostel if current_user.host?

      @message_rooms = MessageRoom.all

      @hostel = Hostel.new
      @q = Hostel.ransack(params[:q])
    end
end