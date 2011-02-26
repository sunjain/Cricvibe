class RemovePlayer1FromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player1
  end

  def self.down
    add_column :teams, :player1, :string
  end
end
