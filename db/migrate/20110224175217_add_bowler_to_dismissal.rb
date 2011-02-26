class AddBowlerToDismissal < ActiveRecord::Migration
  def self.up
    add_column :dismissals, :bowler_id, :integer
  end

  def self.down
    remove_column :dismissals, :bowler_id
  end
end
