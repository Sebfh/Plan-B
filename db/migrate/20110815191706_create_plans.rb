class CreatePlans < ActiveRecord::Migration
  def self.up
    create_table :plans do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.datetime :date

      t.timestamps
    end
  end

  def self.down
    drop_table :plans
  end
end
