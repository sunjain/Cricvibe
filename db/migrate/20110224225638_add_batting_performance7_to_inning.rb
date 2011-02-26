class AddBattingPerformance7ToInning < ActiveRecord::Migration
  def self.up
    add_column :innings, :batting_performance7_id, :integer
  end

  def self.down
    remove_column :innings, :batting_performance7_id
  end
end
