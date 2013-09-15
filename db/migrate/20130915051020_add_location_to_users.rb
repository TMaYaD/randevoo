class AddLocationToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :latitude
      t.string :longitude
    end
  end
end
