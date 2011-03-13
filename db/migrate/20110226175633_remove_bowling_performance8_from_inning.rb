class RemoveBowlingPerformance8FromInning < ActiveRecord::Migration
  def self.up
    remove_column :innings, :bowling_performance8_id
  end

  def self.down
    add_column :innings, :bowling_performance8_id, :inning
  end
end
