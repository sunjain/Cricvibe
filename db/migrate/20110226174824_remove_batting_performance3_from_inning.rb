class RemoveBattingPerformance3FromInning < ActiveRecord::Migration
  def self.up
    remove_column :innings, :batting_performance3_id
  end

  def self.down
    add_column :innings, :batting_performance3_id, :inning
  end
end
