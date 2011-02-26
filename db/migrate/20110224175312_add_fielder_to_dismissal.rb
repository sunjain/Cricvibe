class AddFielderToDismissal < ActiveRecord::Migration
  def self.up
    add_column :dismissals, :fielder_id, :integer
  end

  def self.down
    remove_column :dismissals, :fielder_id
  end
end
