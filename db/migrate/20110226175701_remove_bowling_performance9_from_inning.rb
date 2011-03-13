class RemoveBowlingPerformance9FromInning < ActiveRecord::Migration
  def self.up
    remove_column :innings, :bowling_performance9_id
  end

  def self.down
    add_column :innings, :bowling_performance9_id, :inning
  end
end
