class AddBowlingIdPerformanceToInning < ActiveRecord::Migration
  def self.up
    add_column :innings, :bowling_peformance_id, :integer
  end

  def self.down
    remove_column :innings, :bowling_peformance_id
  end
end
