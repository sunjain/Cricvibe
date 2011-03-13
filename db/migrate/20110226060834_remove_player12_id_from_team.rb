class RemovePlayer12IdFromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player12_id
  end

  def self.down
    add_column :teams, :player12_id, :integer
  end
end
