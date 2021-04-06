class CreateHosts < ActiveRecord::Migration[5.2]
  def change
    create_table :hosts do |t|
      t.string :name
      t.string :phone_number
      t.text :profile
      t.string :image
      t.string :country
      t.integer :birthday
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
