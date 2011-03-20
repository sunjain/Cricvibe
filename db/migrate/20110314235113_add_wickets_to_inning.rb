class AddWicketsToInning < ActiveRecord::Migration
  def self.up
    add_column :innings, :wickets, :integer
  end

  def self.down
    remove_column :innings, :wickets
  end
end
