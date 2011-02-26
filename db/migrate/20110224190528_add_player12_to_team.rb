class AddPlayer12ToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player12, :string
  end

  def self.down
    remove_column :teams, :player12
  end
end
