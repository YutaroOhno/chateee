class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :nickname
      t.text :image
      t.timestamps
    end
  end
end
