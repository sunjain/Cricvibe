class RemoveBattingPerformanceFromInning < ActiveRecord::Migration
  def self.up
    remove_column :innings, :batting_performance_id
  end

  def self.down
    add_column :innings, :batting_performance_id, :integer
  end
end
