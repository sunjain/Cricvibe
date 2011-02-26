class RemovePlayer18FromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player18
  end

  def self.down
    add_column :teams, :player18, :string
  end
end
