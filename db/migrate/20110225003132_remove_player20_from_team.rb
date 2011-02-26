class RemovePlayer20FromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player20
  end

  def self.down
    add_column :teams, :player20, :string
  end
end
