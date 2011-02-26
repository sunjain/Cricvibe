class AddPlayer16ToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player16, :string
  end

  def self.down
    remove_column :teams, :player16
  end
end
