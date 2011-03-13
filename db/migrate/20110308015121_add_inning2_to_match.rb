class AddInning2ToMatch < ActiveRecord::Migration
  def self.up
    add_column :matches, :inning2_id, :integer
  end

  def self.down
    remove_column :matches, :inning2_id
  end
end
