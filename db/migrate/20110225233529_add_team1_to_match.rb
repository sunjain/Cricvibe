class AddTeam1ToMatch < ActiveRecord::Migration
  def self.up
    add_column :matches, :team1_id, :integer
  end

  def self.down
    remove_column :matches, :team1_id
  end
end
