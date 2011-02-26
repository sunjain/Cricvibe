class AddPlayer14IdToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player14_id, :string
  end

  def self.down
    remove_column :teams, :player14_id
  end
end
