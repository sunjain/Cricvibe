class ModifyDefaultOvers < ActiveRecord::Migration
  def self.up
		change_column :matches, :overs, :integer, :default =>20
  end

  def self.down
		change_column :matches, :overs, :integer, 
  end
end
