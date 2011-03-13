class RemoveBowlingPerformanceIdFromInning < ActiveRecord::Migration
  def self.up
    remove_column :innings, :bowling_peformance_id
  end

  def self.down
    add_column :innings, :bowling_peformance_id, :integer
  end
end
