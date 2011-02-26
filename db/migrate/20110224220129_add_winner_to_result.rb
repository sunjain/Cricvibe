class AddWinnerToResult < ActiveRecord::Migration
  def self.up
    add_column :results, :winner_id, :integer
  end

  def self.down
    remove_column :results, :winner_id
  end
end
