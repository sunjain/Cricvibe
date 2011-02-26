class AddPlayer20ToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player20, :string
  end

  def self.down
    remove_column :teams, :player20
  end
end
