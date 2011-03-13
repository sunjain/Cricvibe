class RemoveBowlingPerformance5FromInning < ActiveRecord::Migration
  def self.up
    remove_column :innings, :bowling_performance5_id
  end

  def self.down
    add_column :innings, :bowling_performance5_id, :inning
  end
end
