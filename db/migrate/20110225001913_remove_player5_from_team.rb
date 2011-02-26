class RemovePlayer5FromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player5
  end

  def self.down
    add_column :teams, :player5, :string
  end
end
