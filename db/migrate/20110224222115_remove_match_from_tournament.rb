class RemoveMatchFromTournament < ActiveRecord::Migration
  def self.up
    remove_column :tournaments, :match_id
  end

  def self.down
    add_column :tournaments, :match_id, :integer
  end
end
