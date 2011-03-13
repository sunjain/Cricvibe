class AddVenueToMatch < ActiveRecord::Migration
  def self.up
    add_column :matches, :venue_id, :integer
  end

  def self.down
    remove_column :matches, :venue_id
  end
end
