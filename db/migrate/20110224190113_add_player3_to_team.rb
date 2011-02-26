class AddPlayer3ToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player3, :string
  end

  def self.down
    remove_column :teams, :player3
  end
end
