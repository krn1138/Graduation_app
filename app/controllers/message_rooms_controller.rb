class MessageRoomsController < ApplicationController
  before_action :authenticate_user!
  def index
    @message_rooms = Message_room.all
  end

  def create
    if Message_room.between(params[:guest_id], params[:host_id]).present?
      @message_room = Message_room.between(params[:guest_id], params[:host_id]).first
    else
      @message_room = Message_room.create!(message_room_params)
    end
    redirect_to message_room_messages_path(@message_room)
    else  
      redirect_to root_path
    end  
  end

  private
  def message_room_params
    params.permit(:guest_id, :host_id)
  end
end
