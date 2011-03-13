class RemoveInningIdFromMatch < ActiveRecord::Migration
  def self.up
    remove_column :matches, :inning_id
  end

  def self.down
    add_column :matches, :inning_id, :integer
  end
end
