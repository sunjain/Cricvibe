class AddBowlingPerformance2ToInning < ActiveRecord::Migration
  def self.up
    add_column :innings, :bowling_performance2_id, :integer
  end

  def self.down
    remove_column :innings, :bowling_performance2_id
  end
end
