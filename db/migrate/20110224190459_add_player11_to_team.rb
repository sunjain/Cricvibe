class AddPlayer11ToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player11, :string
  end

  def self.down
    remove_column :teams, :player11
  end
end
