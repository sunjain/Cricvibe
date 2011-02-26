class AddBattingPerformance11ToInning < ActiveRecord::Migration
  def self.up
    add_column :innings, :batting_performance11_id, :integer
  end

  def self.down
    remove_column :innings, :batting_performance11_id
  end
end
