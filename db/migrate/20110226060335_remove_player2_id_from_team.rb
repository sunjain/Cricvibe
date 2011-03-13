class RemovePlayer2IdFromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player2_id
  end

  def self.down
    add_column :teams, :player2_id, :integer
  end
end
