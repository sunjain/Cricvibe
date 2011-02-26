class AddPlayerToBattingPerformance < ActiveRecord::Migration
  def self.up
    add_column :batting_performances, :player_id, :integer
  end

  def self.down
    remove_column :batting_performances, :player_id
  end
end
