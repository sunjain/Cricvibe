class RemovePlayer12FromTeam < ActiveRecord::Migration
  def self.up
    remove_column :teams, :player12
  end

  def self.down
    add_column :teams, :player12, :string
  end
end
