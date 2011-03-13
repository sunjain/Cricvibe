class RemoveWhichInningFromInning < ActiveRecord::Migration
  def self.up
    remove_column :innings, :which_inning
  end

  def self.down
    add_column :innings, :which_inning, :integer
  end
end
