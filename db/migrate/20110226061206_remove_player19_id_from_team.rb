class RemovePlayer19IdFromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player19_id
  end

  def self.down
    add_column :teams, :player19_id, :integer
  end
end
