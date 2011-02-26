class RemovePlayer19FromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player19
  end

  def self.down
    add_column :teams, :player19, :string
  end
end
