class CreateMessageRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :message_rooms do |t|
      t.integer :sender_id
      t.integer :recipient_id
      t.timestamps
    end
      add_index :message_rooms, :sender_id
      add_index :message_rooms, :recipient_id
      add_index :message_rooms, [:sender_id, :recipient_id], unique: true
  end
end
