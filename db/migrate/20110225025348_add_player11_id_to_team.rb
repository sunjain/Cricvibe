class AddPlayer11IdToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player11_id, :string
  end

  def self.down
    remove_column :teams, :player11_id
  end
end
