class RemoveLocations < ActiveRecord::Migration
  def self.up
    drop_table :locations
  end

  def self.down
    create_table :locations do |t|
      t.integer :plan_id
      t.string :address
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      
      t.timestamps
    end
  end
end
