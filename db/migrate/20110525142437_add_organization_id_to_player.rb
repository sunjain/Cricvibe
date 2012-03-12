class AddOrganizationIdToPlayer < ActiveRecord::Migration
  def self.up
    add_column :players, :organization_id, :integer
  end

  def self.down
    remove_column :players, :organization_id
  end
end
