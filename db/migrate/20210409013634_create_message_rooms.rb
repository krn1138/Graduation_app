class CreateMessageRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :message_rooms do |t|
      t.references :host, foreign_key: true
      t.references :guest, foreign_key: true

      t.timestamps
    end
  end
end
