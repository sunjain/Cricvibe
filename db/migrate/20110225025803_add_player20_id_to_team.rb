class AddPlayer20IdToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player20_id, :string
  end

  def self.down
    remove_column :teams, :player20_id
  end
end
