class RemovePlayer4FromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player4
  end

  def self.down
    add_column :teams, :player4, :string
  end
end
