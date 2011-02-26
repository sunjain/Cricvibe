class AddPlayer4IdToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player4_id, :string
  end

  def self.down
    remove_column :teams, :player4_id
  end
end
