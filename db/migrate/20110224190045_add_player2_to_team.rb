class AddPlayer2ToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player2, :string
  end

  def self.down
    remove_column :teams, :player2
  end
end
