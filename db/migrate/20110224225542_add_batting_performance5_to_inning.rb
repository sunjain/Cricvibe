class AddBattingPerformance5ToInning < ActiveRecord::Migration
  def self.up
    add_column :innings, :batting_performance5_id, :integer
  end

  def self.down
    remove_column :innings, :batting_performance5_id
  end
end
