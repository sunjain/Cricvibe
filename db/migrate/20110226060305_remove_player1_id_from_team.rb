class RemovePlayer1IdFromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player1_id
  end

  def self.down
    add_column :teams, :player1_id, :integer
  end
end
