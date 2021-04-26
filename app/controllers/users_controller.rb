class UsersController < ApplicationController
  before_action :different_user_check, only: [:show]

  def index
    # @users = User.all
    # @guests = current_user.guest
    # @hosts = current_user.host
  end

  def show
    # binding.irb
    @user = current_user
    @guest = current_user.guest
    @host = current_user.host
    @hostel = Hostel.pluck(:host_id)
    # @hostel = Hostel.where(host_id: current_user.id).pluck(:host_id)
    # @hostel = Hostel.find(hostel)
    # urlにcategory_id(params)がある場合
    # if params[:hostel_id]
    #   # Categoryのデータベースのテーブルから一致するidを取得
    #   @hostel = Hostel.find(params[:hostel_id])

    #   # category_idと紐づく投稿を取得
    #   @hostels = @hostel.hosts.order(created_at: :desc).all
    # else
    #   # 投稿すべてを取得
    #   @hostels = Hostel.order(created_at: :desc).all
    # end
  end

  private
  def different_user_check
    @user = User.find(params[:id])
    if current_user.id != @user.id
      redirect_to root_path, notice: "あなたのページはここです"
    end
  end
end
