class AddNumInningsToMatch < ActiveRecord::Migration
  def self.up
    add_column :matches, :how_many_innings, :integer
  end

  def self.down
    remove_column :matches, :how_many_innings
  end
end
