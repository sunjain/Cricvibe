class AddPlayer4ToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player4, :string
  end

  def self.down
    remove_column :teams, :player4
  end
end
