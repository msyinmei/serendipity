class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :fbid
      t.string :currentlat
      t.string :currentlng
      t.string :currentplace
      t.integer :friend_id

      t.timestamps
    end
  end
end
