class AddBowlingPerformanceToInning < ActiveRecord::Migration
  def self.up
    add_column :innings, :bowling_performance_id, :integer
  end

  def self.down
    remove_column :innings, :bowling_performance_id
  end
end
