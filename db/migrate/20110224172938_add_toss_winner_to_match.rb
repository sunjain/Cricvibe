class AddTossWinnerToMatch < ActiveRecord::Migration
  def self.up
    add_column :matches, :toss_winner_id, :integer
  end

  def self.down
    remove_column :matches, :toss_winner_id
  end
end
