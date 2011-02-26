class AddPlayer9ToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player9, :string
  end

  def self.down
    remove_column :teams, :player9
  end
end
