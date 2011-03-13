class ChangeHowManyInningsInMatch < ActiveRecord::Migration
  def self.up
		change_column :matches, :how_many_innings, :integer, :default => 2
  end

  def self.down
		change_column :matches, :how_many_innings, :integer
  end
end
