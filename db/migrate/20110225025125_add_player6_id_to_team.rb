class AddPlayer6IdToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player6_id, :string
  end

  def self.down
    remove_column :teams, :player6_id
  end
end
