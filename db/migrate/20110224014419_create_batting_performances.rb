class CreateBattingPerformances < ActiveRecord::Migration
  def self.up
    create_table :batting_performances do |t|
      t.integer :runs
      t.integer :balls
      t.integer :mins
      t.integer :fours
      t.integer :sixes
      t.integer :singles
      t.integer :doubles
      t.integer :triples
      t.integer :dot_balls

      t.timestamps
    end
  end

  def self.down
    drop_table :batting_performances
  end
end
