class AddBattingPerformance8ToInning < ActiveRecord::Migration
  def self.up
    add_column :innings, :batting_performance8_id, :integer
  end

  def self.down
    remove_column :innings, :batting_performance8_id
  end
end
