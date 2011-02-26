class AddInningToMatch < ActiveRecord::Migration
  def self.up
    add_column :matches, :inning_id, :integer
  end

  def self.down
    remove_column :matches, :inning_id
  end
end
