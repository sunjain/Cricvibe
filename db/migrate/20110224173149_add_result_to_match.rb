class AddResultToMatch < ActiveRecord::Migration
  def self.up
    add_column :matches, :result_id, :integer
  end

  def self.down
    remove_column :matches, :result_id
  end
end
