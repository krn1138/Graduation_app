class Hostels::SearchController < ApplicationController
  # before_action :set_search_hostel, only: %i[ index ]
  #   def index
  #   end
def new
end
    def show
    @message_rooms = MessageRoom.all
    # @hostels = Hostel.all

    @hostel = Hostel.new
    @q = Hostel.ransack(params[:q])
    end
end