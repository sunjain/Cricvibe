class RemovePlayerFromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player_id
  end

  def self.down
    add_column :teams, :player_id, :String
  end
end
