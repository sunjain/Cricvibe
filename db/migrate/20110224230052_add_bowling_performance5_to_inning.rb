class AddBowlingPerformance5ToInning < ActiveRecord::Migration
  def self.up
    add_column :innings, :bowling_performance5_id, :integer
  end

  def self.down
    remove_column :innings, :bowling_performance5_id
  end
end
