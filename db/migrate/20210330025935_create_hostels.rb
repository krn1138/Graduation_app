class CreateHostels < ActiveRecord::Migration[5.2]
  def change
    create_table :hostels do |t|
      t.string :name, null: false
      t.string :address
      t.string :kind
      t.string :walk_city_time
      t.float :price
      t.string :images, default: [], array: true
      t.string :phone_number
      t.text :details
      t.string :country
      t.string :capacity
      t.float :latitude
      t.float :longitude
      t.text :around_information
      t.references :host, foreign_key: true

      t.timestamps
    end
      add_index :hostels, [:name, :country]
  end
end
