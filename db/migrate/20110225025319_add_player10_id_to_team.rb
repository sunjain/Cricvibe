class AddPlayer10IdToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player10_id, :string
  end

  def self.down
    remove_column :teams, :player10_id
  end
end
