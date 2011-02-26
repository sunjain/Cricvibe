class AddTeam2ToMatch < ActiveRecord::Migration
  def self.up
    add_column :matches, :team2_id, :integer
  end

  def self.down
    remove_column :matches, :team2_id
  end
end
