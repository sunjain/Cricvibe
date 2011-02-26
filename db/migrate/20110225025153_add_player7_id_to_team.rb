class AddPlayer7IdToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player7_id, :string
  end

  def self.down
    remove_column :teams, :player7_id
  end
end
