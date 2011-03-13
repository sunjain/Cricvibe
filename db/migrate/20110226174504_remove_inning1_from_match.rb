class RemoveInning1FromMatch < ActiveRecord::Migration
  def self.up
    remove_column :matches, :inning1_id
  end

  def self.down
    add_column :matches, :inning1_id, :integer
  end
end
