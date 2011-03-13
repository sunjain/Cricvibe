class RemovePlayer20IdFromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player20_id
  end

  def self.down
    add_column :teams, :player20_id, :integer
  end
end
