class MessageRoomsController < ApplicationController
  before_action :authenticate_user!
  # before_action :hostel_confirmation
  def index
    @message_rooms = MessageRoom.all
  end

  def create

    if MessageRoom.between(params[:sender_id], params[:recipient_id]).present?
      @message_room = MessageRoom.between(params[:sender_id], params[:recipient_id]).first
    else
      @message_room = MessageRoom.create!(message_room_params)
    end
    # binding.irb
    redirect_to message_room_messages_path(@message_room)
    # end
    # if Message_room.between(params[:sender_id], params[:recipient_id]).present?
    #   @message_room = Message_room.between(params[:sender_id], params[:recipient_id]).first
    # else
    #   @message_room = Message_room.create!(message_room_params)
    # end
    # redirect_to message_room_messages_path(@message_room)
    # else
    #   redirect_to root_path
    # end
  end

  private
  def message_room_params
    params.permit(:sender_id, :recipient_id)
  end
end
