class CreateHosts < ActiveRecord::Migration[5.2]
  def change
    create_table :hosts do |t|
      t.string :name, null: false
      t.string :phone_number
      t.text :profile
      t.string :image
      t.string :country
      t.integer :birthday

      t.timestamps
    end
  end
end
