class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :time
      t.decimal :latitude, precision: 8, scale: 5
      t.decimal :longitude, precision: 8, scale: 5

      t.timestamps
    end
  end
end
