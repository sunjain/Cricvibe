class ModifyTypeColumn < ActiveRecord::Migration
  def self.up
		rename_column :dismissals, :type, :dismissal_type
  end

  def self.down
		rename_column :dismissals, :dismissal_type, :type
  end
end
