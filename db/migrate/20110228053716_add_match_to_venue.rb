class AddMatchToVenue < ActiveRecord::Migration
  def self.up
    add_column :venues, :match_id, :integer
  end

  def self.down
    remove_column :venues, :match_id
  end
end
