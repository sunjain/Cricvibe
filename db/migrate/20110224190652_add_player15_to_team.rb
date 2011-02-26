class AddPlayer15ToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player15, :string
  end

  def self.down
    remove_column :teams, :player15
  end
end
