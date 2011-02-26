class AddPlayer8ToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player8, :string
  end

  def self.down
    remove_column :teams, :player8
  end
end
