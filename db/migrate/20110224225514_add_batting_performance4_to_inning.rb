class AddBattingPerformance4ToInning < ActiveRecord::Migration
  def self.up
    add_column :innings, :batting_performance4_id, :integer
  end

  def self.down
    remove_column :innings, :batting_performance4_id
  end
end
