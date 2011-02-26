class RemovePlayer9FromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player9
  end

  def self.down
    add_column :teams, :player9, :string
  end
end
