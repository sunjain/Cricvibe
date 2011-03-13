class AddInningToBattingPerformance < ActiveRecord::Migration
  def self.up
    add_column :batting_performances, :inning_id, :integer
  end

  def self.down
    remove_column :batting_performances, :inning_id
  end
end
