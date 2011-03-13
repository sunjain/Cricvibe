class RemovePlayer6IdFromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player6_id
  end

  def self.down
    add_column :teams, :player6_id, :integer
  end
end
