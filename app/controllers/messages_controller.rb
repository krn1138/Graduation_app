class MessagesController < ApplicationController
  before_action do
    @message_room = MessageRoom.find(params[:message_room_id])
  end

  def index
    # @me = current_user
    # @user =
    # indexアクションに書かれたこれらの記載は、
    # 一つ一つの部分で何をしているかの理解をわかりやすくするために
    # このような記載にしていますが、実戦で用いるのには少々冗長なコードとなっているので
    # 余力のある人はコードのリファクタリングにも挑戦してみましょう！
    @messages = @message_room.messages
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

