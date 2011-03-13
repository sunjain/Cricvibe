class RemoveVenueFromMatch < ActiveRecord::Migration
  def self.up
    remove_column :matches, :venue
  end

  def self.down
    add_column :matches, :venue, :string
  end
end
