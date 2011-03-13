class RemoveBowlingPerformance7FromInning < ActiveRecord::Migration
  def self.up
    remove_column :innings, :bowling_performance7_id
  end

  def self.down
    add_column :innings, :bowling_performance7_id, :inning
  end
end
