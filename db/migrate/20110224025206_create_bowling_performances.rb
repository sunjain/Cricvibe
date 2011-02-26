class CreateBowlingPerformances < ActiveRecord::Migration
  def self.up
    create_table :bowling_performances do |t|
      t.float :overs
      t.integer :wickets
      t.integer :runs
      t.integer :maidens
      t.integer :wides
      t.integer :noballs
      t.integer :legbyes
      t.integer :extras

      t.timestamps
    end
  end

  def self.down
    drop_table :bowling_performances
  end
end
