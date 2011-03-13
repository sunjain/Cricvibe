class RemoveBattingPerformance6FromInning < ActiveRecord::Migration
  def self.up
    remove_column :innings, :batting_performance6_id
  end

  def self.down
    add_column :innings, :batting_performance6_id, :inning
  end
end
