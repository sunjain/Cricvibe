class AddTournamentIdToTeamRoaster < ActiveRecord::Migration
  def self.up
    add_column :team_roasters, :tournament_id, :integer
  end

  def self.down
    remove_column :team_roasters, :tournament_id
  end
end
