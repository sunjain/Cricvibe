class AddPlayer1IdToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player1_id, :string
  end

  def self.down
    remove_column :teams, :player1_id
  end
end
