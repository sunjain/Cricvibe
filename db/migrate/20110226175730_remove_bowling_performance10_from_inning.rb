class RemoveBowlingPerformance10FromInning < ActiveRecord::Migration
  def self.up
    remove_column :innings, :bowling_performance10_id
  end

  def self.down
    add_column :innings, :bowling_performance10_id, :inning
  end
end
