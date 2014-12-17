class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :eventname
      t.datetime :eventdatetime
      t.string :eventlat
      t.string :eventlng
      t.string :eventplace
      t.text :eventabout
      t.references :user, index: true

      t.timestamps
    end
  end
end
