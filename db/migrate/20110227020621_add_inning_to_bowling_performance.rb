class AddInningToBowlingPerformance < ActiveRecord::Migration
  def self.up
    add_column :bowling_performances, :inning_id, :integer
  end

  def self.down
    remove_column :bowling_performances, :inning_id
  end
end
