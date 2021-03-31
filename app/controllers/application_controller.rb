class ApplicationController < ActionController::Base
  
  def set_search_hostel
    if params[:q] != nil
        # binding.irb
        params[:q]['name_or_country_cont_any'] = params[:q]['name_or_country_cont_any'].to_s.split(/[\p{blank}\s]+/)
        @q = Hostel.ransack(params[:q])
        @hostels = @q.result(distinct: true)
      else
        @q = Hostel.ransack(params[:q])
        @hostels = @q.result(distinct: true)
     end
      # @q = Hostel.ransack(params[:q])
      # @hostels = @q.result(distinct: true)
  end
end
