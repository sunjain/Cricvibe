class RemovePlayer3IdFromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player3_id
  end

  def self.down
    add_column :teams, :player3_id, :integer
  end
end
