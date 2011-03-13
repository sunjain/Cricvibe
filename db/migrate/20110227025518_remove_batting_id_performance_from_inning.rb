class RemoveBattingIdPerformanceFromInning < ActiveRecord::Migration
  def self.up
    remove_column :innings, :batting_peformance_id
  end

  def self.down
    add_column :innings, :batting_peformance_id, :integer
  end
end
