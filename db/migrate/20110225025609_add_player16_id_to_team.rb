class AddPlayer16IdToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player16_id, :string
  end

  def self.down
    remove_column :teams, :player16_id
  end
end
