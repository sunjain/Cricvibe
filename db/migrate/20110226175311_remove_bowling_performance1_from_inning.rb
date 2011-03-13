class RemoveBowlingPerformance1FromInning < ActiveRecord::Migration
  def self.up
    remove_column :innings, :bowling_performance1_id
  end

  def self.down
    add_column :innings, :bowling_performance1_id, :inning
  end
end
