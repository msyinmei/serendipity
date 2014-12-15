class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :datetime
      t.string :eventlat
      t.string :eventlng
      t.string :eventplace
      t.text :about
      t.references :user, index: true

      t.timestamps
    end
  end
end
