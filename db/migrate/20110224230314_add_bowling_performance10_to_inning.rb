class AddBowlingPerformance10ToInning < ActiveRecord::Migration
  def self.up
    add_column :innings, :bowling_performance10_id, :integer
  end

  def self.down
    remove_column :innings, :bowling_performance10_id
  end
end
