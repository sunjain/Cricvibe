class RemoveBattingPerformance11FromInning < ActiveRecord::Migration
  def self.up
    remove_column :innings, :batting_performance11_id
  end

  def self.down
    add_column :innings, :batting_performance11_id, :inning
  end
end
