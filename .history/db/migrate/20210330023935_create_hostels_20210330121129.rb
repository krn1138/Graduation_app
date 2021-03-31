class CreateHostels < ActiveRecord::Migration[5.2]
  def change
    create_table :hostels do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.integer :kind, null: false
      t.integer :walk_city_time
      t.float :price, null: false
      t.string :image
      t.string :phone_number, null: false
      t.text :details, null: false
      t.integer :country, null: false
      t.integer :capacity
      t.float :latitude
      t.float :longitude
      t.text :around_information

      t.timestamps
    end
  end
end
