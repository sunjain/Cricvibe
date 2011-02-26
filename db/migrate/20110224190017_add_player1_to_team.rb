class AddPlayer1ToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player1, :string
  end

  def self.down
    remove_column :teams, :player1
  end
end
