class AddBowlingPerformance9ToInning < ActiveRecord::Migration
  def self.up
    add_column :innings, :bowling_performance9_id, :integer
  end

  def self.down
    remove_column :innings, :bowling_performance9_id
  end
end
