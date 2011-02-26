class AddPlayerToBowlingPerformance < ActiveRecord::Migration
  def self.up
    add_column :bowling_performances, :player_id, :integer
  end

  def self.down
    remove_column :bowling_performances, :player_id
  end
end
