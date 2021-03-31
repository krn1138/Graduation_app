class HostelsController < ApplicationController
  before_action :set_hostel

    def index
      @q = Hostel.ransack(params[:q])
      @hostels = @q.result(distinct: true)
    end

  def show
  end

  private
  def set_hostel
    @hostel = Hostel.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def hostel_params
    params.require(:hostel).permit(:name)
  end
end
