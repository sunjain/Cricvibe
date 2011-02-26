class AddPlayer8IdToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player8_id, :string
  end

  def self.down
    remove_column :teams, :player8_id
  end
end
