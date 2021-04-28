class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def set_search_hostel
    if params[:q] != nil
      params[:q]['name_or_country_cont_any'] = params[:q]['name_or_country_cont_any'].to_s.split(/[\p{blank}\s]+/)
      @q = Hostel.ransack(params[:q])
      @hostels = @q.result(distinct: true)
    end
  end

  def not_movie
    render layout: false unless "hostels/search#show"
  end
end
