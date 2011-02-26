class AddPlayer18IdToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player18_id, :string
  end

  def self.down
    remove_column :teams, :player18_id
  end
end
