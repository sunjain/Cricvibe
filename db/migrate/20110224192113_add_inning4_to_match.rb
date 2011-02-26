class AddInning4ToMatch < ActiveRecord::Migration
  def self.up
    add_column :matches, :inning4_id, :integer
  end

  def self.down
    remove_column :matches, :inning4_id
  end
end
