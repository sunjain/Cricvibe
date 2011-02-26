class AddBowlingPerformance6ToInning < ActiveRecord::Migration
  def self.up
    add_column :innings, :bowling_performance6_id, :integer
  end

  def self.down
    remove_column :innings, :bowling_performance6_id
  end
end
