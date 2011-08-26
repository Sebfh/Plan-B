class RenameDateToStartAt < ActiveRecord::Migration
  def self.up
    rename_column(:plans, :date, :starts_at)
  end

  def self.down
    rename_column(:plans, :starts_at, :date)
  end
end
