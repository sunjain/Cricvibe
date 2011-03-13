class RemovePlayer4IdFromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player4_id
  end

  def self.down
    add_column :teams, :player4_id, :integer
  end
end
