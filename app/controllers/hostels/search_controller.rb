class Hostels::SearchController < ApplicationController 
    def show
        @hostel = Hostel.new
    end
end