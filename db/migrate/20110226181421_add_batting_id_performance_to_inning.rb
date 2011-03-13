class AddBattingIdPerformanceToInning < ActiveRecord::Migration
  def self.up
    add_column :innings, :batting_peformance_id, :integer
  end

  def self.down
    remove_column :innings, :batting_peformance_id
  end
end
