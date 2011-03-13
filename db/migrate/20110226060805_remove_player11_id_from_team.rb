class RemovePlayer11IdFromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player11_id
  end

  def self.down
    add_column :teams, :player11_id, :integer
  end
end
