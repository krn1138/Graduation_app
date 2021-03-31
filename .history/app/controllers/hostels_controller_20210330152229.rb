class HostelsController < ApplicationController
  def index
    def index
      @q = User.ransack(params[:q])
      @users = @q.result(distinct: true)
    end
  end

  def show
  end
end
