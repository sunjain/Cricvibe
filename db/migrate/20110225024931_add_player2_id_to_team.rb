class AddPlayer2IdToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player2_id, :string
  end

  def self.down
    remove_column :teams, :player2_id
  end
end
