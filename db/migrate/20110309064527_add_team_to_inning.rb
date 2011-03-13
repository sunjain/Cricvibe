class AddTeamToInning < ActiveRecord::Migration
  def self.up
    add_column :innings, :team_id, :integer
  end

  def self.down
    remove_column :innings, :team_id
  end
end
