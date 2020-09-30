class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :postal_code
      t.integer :prefectures
      t.string :city
      t.string :town
      t.string :building
      t.string :phone_number
      t.text :comment
      t.timestamps
    end
  end
end
