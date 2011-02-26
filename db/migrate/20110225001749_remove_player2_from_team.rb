class RemovePlayer2FromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player2
  end

  def self.down
    add_column :teams, :player2, :string
  end
end
