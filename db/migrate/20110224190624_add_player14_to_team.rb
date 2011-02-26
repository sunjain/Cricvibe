class AddPlayer14ToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player14, :string
  end

  def self.down
    remove_column :teams, :player14
  end
end
