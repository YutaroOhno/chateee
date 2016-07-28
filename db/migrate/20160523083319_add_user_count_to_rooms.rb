class AddUserCountToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :user_count, :integer
  end
end
