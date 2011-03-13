class RemovePlayer14IdFromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player14_id
  end

  def self.down
    add_column :teams, :player14_id, :integer
  end
end
