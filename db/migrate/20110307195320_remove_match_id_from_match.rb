class RemoveMatchIdFromMatch < ActiveRecord::Migration
  def self.up
    remove_column :matches, :match_id
  end

  def self.down
    add_column :matches, :match_id, :integer
  end
end
