class RemovePlayer14FromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player14
  end

  def self.down
    add_column :teams, :player14, :string
  end
end
