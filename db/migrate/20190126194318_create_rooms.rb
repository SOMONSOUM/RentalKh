class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :full_address
      t.decimal :room_price
      t.float :room_size
      t.string :room_condition
      t.text  :room_description

      t.timestamps
    end
  end
end
