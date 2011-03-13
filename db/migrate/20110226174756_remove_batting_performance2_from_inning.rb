class RemoveBattingPerformance2FromInning < ActiveRecord::Migration
  def self.up
    remove_column :innings, :batting_performance2_id
  end

  def self.down
    add_column :innings, :batting_performance2_id, :inning
  end
end
