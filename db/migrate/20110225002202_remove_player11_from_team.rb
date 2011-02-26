class RemovePlayer11FromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player11
  end

  def self.down
    add_column :teams, :player11, :string
  end
end
