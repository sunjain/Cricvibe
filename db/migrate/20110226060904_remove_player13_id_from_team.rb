class RemovePlayer13IdFromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player13_id
  end

  def self.down
    add_column :teams, :player13_id, :integer
  end
end
