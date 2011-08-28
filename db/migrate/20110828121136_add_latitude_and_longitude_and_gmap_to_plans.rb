class AddLatitudeAndLongitudeAndGmapToPlans < ActiveRecord::Migration
  def self.up
    add_column :plans, :address, :string
    add_column :plans, :latitude, :float
    add_column :plans, :longitude, :float
    add_column :plans, :gmaps, :boolean
  end

  def self.down
    remove_column :plans, :address
    remove_column :plans, :gmaps
    remove_column :plans, :gmaps
    remove_column :plans, :gmaps
  end
end
