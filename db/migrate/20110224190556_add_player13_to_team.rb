class AddPlayer13ToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player13, :string
  end

  def self.down
    remove_column :teams, :player13
  end
end
