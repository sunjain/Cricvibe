class AddMatchToInning < ActiveRecord::Migration
  def self.up
    add_column :innings, :match_id, :integer
  end

  def self.down
    remove_column :innings, :match_id
  end
end
