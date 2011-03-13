class RemovePlayer5IdFromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player5_id
  end

  def self.down
    add_column :teams, :player5_id, :integer
  end
end
