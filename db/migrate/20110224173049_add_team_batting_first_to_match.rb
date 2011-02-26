class AddTeamBattingFirstToMatch < ActiveRecord::Migration
  def self.up
    add_column :matches, :team_batting_first_id, :integer
  end

  def self.down
    remove_column :matches, :team_batting_first_id
  end
end
