class RemovePlayer16IdFromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player16_id
  end

  def self.down
    add_column :teams, :player16_id, :integer
  end
end
