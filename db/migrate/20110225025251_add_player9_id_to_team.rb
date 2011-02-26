class AddPlayer9IdToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player9_id, :string
  end

  def self.down
    remove_column :teams, :player9_id
  end
end
