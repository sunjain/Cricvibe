class RemovePlayer10FromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player10
  end

  def self.down
    add_column :teams, :player10, :string
  end
end
