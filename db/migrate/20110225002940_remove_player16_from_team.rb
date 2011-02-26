class RemovePlayer16FromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player16
  end

  def self.down
    add_column :teams, :player16, :string
  end
end
