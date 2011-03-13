class RemoveInning2FromMatch < ActiveRecord::Migration
  def self.up
    remove_column :matches, :inning2_id
  end

  def self.down
    add_column :matches, :inning2_id, :integer
  end
end
