class RemovePlayer17FromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player17
  end

  def self.down
    add_column :teams, :player17, :string
  end
end
