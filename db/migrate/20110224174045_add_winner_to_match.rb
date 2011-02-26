class AddWinnerToMatch < ActiveRecord::Migration
  def self.up
    add_column :matches, :winner_id, :integer
  end

  def self.down
    remove_column :matches, :winner_id
  end
end
