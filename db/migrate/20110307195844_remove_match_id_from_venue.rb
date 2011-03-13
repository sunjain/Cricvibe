class RemoveMatchIdFromVenue < ActiveRecord::Migration
  def self.up
    remove_column :venues, :match_id
  end

  def self.down
    add_column :venues, :match_id, :integer
  end
end
