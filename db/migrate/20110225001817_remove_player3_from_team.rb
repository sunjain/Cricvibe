class RemovePlayer3FromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player3
  end

  def self.down
    add_column :teams, :player3, :string
  end
end
