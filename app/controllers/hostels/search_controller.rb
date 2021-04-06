class Hostels::SearchController < ApplicationController 
  # before_action :set_search_hostel, only: %i[ index ]
  #   def index
  #   end

    def show
        @hostel = Hostel.new
        @q = Hostel.ransack(params[:q])
    end
end