class RemoveBattingPerformance4FromInning < ActiveRecord::Migration
  def self.up
    remove_column :innings, :batting_performance4_id
  end

  def self.down
    add_column :innings, :batting_performance4_id, :inning
  end
end
