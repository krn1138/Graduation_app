class CreateHostels < ActiveRecord::Migration[5.2]
  def change
    create_table :hostels do |t|
      t.string :name, null: false
      t.string :address
      t.integer :kind
      t.integer :walk_city_time
      t.integer :price
      t.string :image
      t.string :phone_number
      t.text :details
      t.string :country
      t.integer :capacity
      t.float :latitude
      t.float :longitude
      t.text :around_information
      t.references :host, foreign_key: true

      t.timestamps
    end
      add_index :hostels, [:name, :country]
  end
end
