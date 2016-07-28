class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.text :text
      t.timestamps
    end
  end
end
