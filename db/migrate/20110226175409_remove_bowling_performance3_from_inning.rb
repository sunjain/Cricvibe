class RemoveBowlingPerformance3FromInning < ActiveRecord::Migration
  def self.up
    remove_column :innings, :bowling_performance3_id
  end

  def self.down
    add_column :innings, :bowling_performance3_id, :inning
  end
end
