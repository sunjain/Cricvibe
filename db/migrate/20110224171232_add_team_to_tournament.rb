class AddTeamToTournament < ActiveRecord::Migration
  def self.up
    add_column :tournaments, :tournament_id, :integer
  end

  def self.down
    remove_column :tournaments, :tournament_id
  end
end
