class RemoveBowlingPerformanceFromInning < ActiveRecord::Migration
  def self.up
    remove_column :innings, :bowling_performance_id
  end

  def self.down
    add_column :innings, :bowling_performance_id, :integer
  end
end
