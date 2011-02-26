class AddPlayer6ToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player6, :string
  end

  def self.down
    remove_column :teams, :player6
  end
end
