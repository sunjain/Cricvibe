class AddOrganizationToTournament < ActiveRecord::Migration
  def self.up
    add_column :tournaments, :organization_id, :integer
  end

  def self.down
    remove_column :tournaments, :organization_id
  end
end
