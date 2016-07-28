class CreateRoomImages < ActiveRecord::Migration
  def change
    create_table :room_images do |t|
      t.text :image
      t.timestamps
    end
  end
end
