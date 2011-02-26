class AddPlayer3IdToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player3_id, :string
  end

  def self.down
    remove_column :teams, :player3_id
  end
end
