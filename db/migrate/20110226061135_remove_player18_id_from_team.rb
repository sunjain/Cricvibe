class RemovePlayer18IdFromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player18_id
  end

  def self.down
    add_column :teams, :player18_id, :integer
  end
end
