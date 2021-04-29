class CreateHosts < ActiveRecord::Migration[5.2]
  def change
    create_table :hosts do |t|
      t.string :name, default: 'No name'
      t.string :phone_number
      t.text :profile
      t.string :image
      t.string :country
      t.string :birthday
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
