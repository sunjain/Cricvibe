class RemoveInning4FromMatch < ActiveRecord::Migration
  def self.up
    remove_column :matches, :inning4_id
  end

  def self.down
    add_column :matches, :inning4_id, :integer
  end
end
