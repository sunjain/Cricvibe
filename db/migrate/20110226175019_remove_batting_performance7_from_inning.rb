class RemoveBattingPerformance7FromInning < ActiveRecord::Migration
  def self.up
    remove_column :innings, :batting_performance7_id
  end

  def self.down
    add_column :innings, :batting_performance7_id, :inning
  end
end
