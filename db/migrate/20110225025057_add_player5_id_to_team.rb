class AddPlayer5IdToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player5_id, :string
  end

  def self.down
    remove_column :teams, :player5_id
  end
end
