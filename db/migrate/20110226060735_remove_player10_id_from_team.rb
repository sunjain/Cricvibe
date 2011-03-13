class RemovePlayer10IdFromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player10_id
  end

  def self.down
    add_column :teams, :player10_id, :integer
  end
end
