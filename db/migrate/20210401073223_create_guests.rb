class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :name, null: false
      t.string :address
      t.string :phone_number
      t.integer :gender
      t.integer :country
      t.float :latitude
      t.float :longitude
      t.string :image

      t.timestamps
    end
  end
end
