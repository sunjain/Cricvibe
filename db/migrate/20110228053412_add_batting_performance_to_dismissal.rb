class AddBattingPerformanceToDismissal < ActiveRecord::Migration
  def self.up
    add_column :dismissals, :batting_performance_id, :integer
  end

  def self.down
    remove_column :dismissals, :batting_performance_id
  end
end
