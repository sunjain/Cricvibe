class RemovePlayer7FromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player7
  end

  def self.down
    add_column :teams, :player7, :string
  end
end
