class RemovePlayer7IdFromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player7_id
  end

  def self.down
    add_column :teams, :player7_id, :integer
  end
end
