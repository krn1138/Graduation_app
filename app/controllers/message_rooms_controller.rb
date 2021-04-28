class MessageRoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @message_rooms = MessageRoom.all
  end

  def create
    if MessageRoom.between(params[:sender_id], params[:recipient_id]).present?
      @message_room = MessageRoom.between(params[:sender_id], params[:recipient_id]).first
    else
      @message_room = MessageRoom.create!(message_room_params)
    end
    redirect_to message_room_messages_path(@message_room)
  end

  private
  def message_room_params
    params.permit(:sender_id, :recipient_id)
  end
end
