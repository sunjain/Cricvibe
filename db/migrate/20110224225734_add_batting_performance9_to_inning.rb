class AddBattingPerformance9ToInning < ActiveRecord::Migration
  def self.up
    add_column :innings, :batting_performance9_id, :integer
  end

  def self.down
    remove_column :innings, :batting_performance9_id
  end
end
