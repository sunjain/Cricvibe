class AddPlayer18ToTeam < ActiveRecord::Migration
  def self.up
    add_column :teams, :player18, :string
  end

  def self.down
    remove_column :teams, :player18
  end
end
