class RemovePlayer8FromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player8
  end

  def self.down
    add_column :teams, :player8, :string
  end
end
