class AddPositionToBattingPerformance < ActiveRecord::Migration
  def self.up
    add_column :batting_performances, :position, :integer
  end

  def self.down
    remove_column :batting_performances, :position
  end
end
