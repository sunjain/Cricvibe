class AddBowlingPerformance1ToInning < ActiveRecord::Migration
  def self.up
    add_column :innings, :bowling_performance1_id, :integer
  end

  def self.down
    remove_column :innings, :bowling_performance1_id
  end
end
