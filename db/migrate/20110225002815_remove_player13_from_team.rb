class RemovePlayer13FromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player13
  end

  def self.down
    add_column :teams, :player13, :string
  end
end
