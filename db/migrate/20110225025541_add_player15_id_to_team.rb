class AddPlayer15IdToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player15_id, :string
  end

  def self.down
    remove_column :teams, :player15_id
  end
end
