class RemovePlayer8IdFromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player8_id
  end

  def self.down
    add_column :teams, :player8_id, :integer
  end
end
