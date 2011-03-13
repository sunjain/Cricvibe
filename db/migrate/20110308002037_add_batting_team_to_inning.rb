class AddBattingTeamToInning < ActiveRecord::Migration
  def self.up
    add_column :innings, :batting_team_id, :integer
  end

  def self.down
    remove_column :innings, :batting_team_id
  end
end
