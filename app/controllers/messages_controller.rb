class MessagesController < ApplicationController
  before_action do
    @message_room = MessageRoom.find(params[:message_room_id])
  end

  def index
    @message_rooms = MessageRoom.all
    @messages = @message_room.messages.eager_load(:user).order(:created_at)
    if @messages.length > 10
      @over_ten = true
      @messages = Message.where(id: @messages[-10..-1].pluck(:id))
    end
    if params[:m]
      @over_ten = false
      @messages = @message_room.messages
    end
    if @messages.last
      @messages.where.not(user_id: current_user.id).update_all(read: true)
    end
    @messages = @messages.order(:created_at)
    @message = @message_room.messages.build
  end

  def create
    @message = @message_room.messages.build(message_params)
    if @message.save
      redirect_to message_room_messages_path(@message_room)
    else
      render 'index'
    end
  end

  private
  def message_params
    params.require(:message).permit(:content, :user_id, :read)
  end
end

