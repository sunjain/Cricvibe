class AddBowlingPerformance3ToInning < ActiveRecord::Migration
  def self.up
    add_column :innings, :bowling_performance3_id, :integer
  end

  def self.down
    remove_column :innings, :bowling_performance3_id
  end
end
