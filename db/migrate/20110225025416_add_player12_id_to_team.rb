class AddPlayer12IdToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player12_id, :string
  end

  def self.down
    remove_column :teams, :player12_id
  end
end
