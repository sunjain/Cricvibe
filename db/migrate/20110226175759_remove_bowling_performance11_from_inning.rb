class RemoveBowlingPerformance11FromInning < ActiveRecord::Migration
  def self.up
    remove_column :innings, :bowling_performance11_id
  end

  def self.down
    add_column :innings, :bowling_performance11_id, :inning
  end
end
