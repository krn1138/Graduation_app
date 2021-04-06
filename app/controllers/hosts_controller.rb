class HostsController < ApplicationController
  before_action :set_host
  def index
    @hosts = Host.all
  end

  def new
    @host = Host.new
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def set_host
    @host = Host.find(params[:id])
  end

  def host_params
    params.require(:host).permit(:name, :address, :country)
  end

end
