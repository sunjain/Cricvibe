class RemovePlayer15IdFromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player15_id
  end

  def self.down
    add_column :teams, :player15_id, :integer
  end
end
