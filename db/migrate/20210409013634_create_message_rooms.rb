class CreateMessageRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :message_rooms do |t|

      t.timestamps
    end
  end
end
