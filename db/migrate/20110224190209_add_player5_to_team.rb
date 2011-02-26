class AddPlayer5ToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player5, :string
  end

  def self.down
    remove_column :teams, :player5
  end
end
