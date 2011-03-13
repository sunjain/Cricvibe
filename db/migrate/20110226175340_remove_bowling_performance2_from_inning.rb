class RemoveBowlingPerformance2FromInning < ActiveRecord::Migration
  def self.up
    remove_column :innings, :bowling_performance2_id
  end

  def self.down
    add_column :innings, :bowling_performance2_id, :inning
  end
end
