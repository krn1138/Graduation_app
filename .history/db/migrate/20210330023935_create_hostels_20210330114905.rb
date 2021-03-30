class CreateHostels < ActiveRecord::Migration[5.2]
  def change
    create_table :hostels do |t|
      t.string :name
      t.string :address
      t.integer :kind
      t.integer :walk_city_time
      t.float :price
      t.string :image
      t.string :phone_number
      t.text :details
      t.integer :country
      t.integer :capacity
      t.float :latitude
      t.float :longitude
      t.text :around_information
      t.integer :grade

      t.timestamps
    end
  end
end
