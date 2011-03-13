class AddTeamToMatch < ActiveRecord::Migration
  def self.up
    add_column :matches, :match_id, :integer
  end

  def self.down
    remove_column :matches, :match_id
  end
end
