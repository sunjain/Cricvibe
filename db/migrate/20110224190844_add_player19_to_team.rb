class AddPlayer19ToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player19, :string
  end

  def self.down
    remove_column :teams, :player19
  end
end
