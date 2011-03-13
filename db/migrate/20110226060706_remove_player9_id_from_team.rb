class RemovePlayer9IdFromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player9_id
  end

  def self.down
    add_column :teams, :player9_id, :integer
  end
end
