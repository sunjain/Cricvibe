class AddInning3ToMatch < ActiveRecord::Migration
  def self.up
    add_column :matches, :inning3_id, :integer
  end

  def self.down
    remove_column :matches, :inning3_id
  end
end
