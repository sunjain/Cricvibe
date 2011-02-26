class AddPlayer17IdToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player17_id, :string
  end

  def self.down
    remove_column :teams, :player17_id
  end
end
