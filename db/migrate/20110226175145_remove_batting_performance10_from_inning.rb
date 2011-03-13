class RemoveBattingPerformance10FromInning < ActiveRecord::Migration
  def self.up
    remove_column :innings, :batting_performance10_id
  end

  def self.down
    add_column :innings, :batting_performance10_id, :inning
  end
end
