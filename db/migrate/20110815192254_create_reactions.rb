class CreateReactions < ActiveRecord::Migration
  def self.up
    create_table :reactions do |t|
      t.integer :plan_id
      t.integer :user_id
      t.string :message
      t.boolean :attending

      t.timestamps
    end
  end

  def self.down
    drop_table :reactions
  end
end
