class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uuid
      t.string :gcm_id
      t.string :name
      t.string :pic

      t.timestamps
    end
  end
end
