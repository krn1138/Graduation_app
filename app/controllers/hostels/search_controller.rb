class Hostels::SearchController < ApplicationController 
    def show
        @hostel = Hostel.new
        @q = Hostel.ransack(params[:q])
    end
end