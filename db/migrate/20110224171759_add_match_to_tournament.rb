class AddMatchToTournament < ActiveRecord::Migration
  def self.up
    add_column :tournaments, :match_id, :integer
  end

  def self.down
    remove_column :tournaments, :match_id
  end
end
