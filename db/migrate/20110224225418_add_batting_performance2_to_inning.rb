class AddBattingPerformance2ToInning < ActiveRecord::Migration
  def self.up
    add_column :innings, :batting_performance2_id, :integer
  end

  def self.down
    remove_column :innings, :batting_performance2_id
  end
end
