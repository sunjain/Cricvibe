class AddInning1ToMatch < ActiveRecord::Migration
  def self.up
    add_column :matches, :inning1_id, :integer
  end

  def self.down
    remove_column :matches, :inning1_id
  end
end
