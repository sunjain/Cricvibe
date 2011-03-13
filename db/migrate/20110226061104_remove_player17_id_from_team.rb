class RemovePlayer17IdFromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player17_id
  end

  def self.down
    add_column :teams, :player17_id, :integer
  end
end
