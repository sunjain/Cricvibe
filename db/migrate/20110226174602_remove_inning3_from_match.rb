class RemoveInning3FromMatch < ActiveRecord::Migration
  def self.up
    remove_column :matches, :inning3_id
  end

  def self.down
    add_column :matches, :inning3_id, :integer
  end
end
