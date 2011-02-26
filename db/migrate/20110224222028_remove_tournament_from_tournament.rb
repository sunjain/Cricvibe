class RemoveTournamentFromTournament < ActiveRecord::Migration
  def self.up
    remove_column :tournaments, :tournament_id
  end

  def self.down
    add_column :tournaments, :tournament_id, :integer
  end
end
