class AddBowlingTeamToInning < ActiveRecord::Migration
  def self.up
    add_column :innings, :bowling_team_id, :integer
  end

  def self.down
    remove_column :innings, :bowling_team_id
  end
end
