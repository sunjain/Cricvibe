class RemovePlayer6FromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player6
  end

  def self.down
    add_column :teams, :player6, :string
  end
end
