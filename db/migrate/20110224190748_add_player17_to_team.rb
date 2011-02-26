class AddPlayer17ToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player17, :string
  end

  def self.down
    remove_column :teams, :player17
  end
end
