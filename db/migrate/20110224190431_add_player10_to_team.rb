class AddPlayer10ToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player10, :string
  end

  def self.down
    remove_column :teams, :player10
  end
end
