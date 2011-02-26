class CreateInnings < ActiveRecord::Migration
  def self.up
    create_table :innings do |t|
      t.integer :which_inning
      t.float :overs
      t.integer :wides
      t.integer :noballs
      t.integer :legbyes
      t.integer :byes
      t.integer :extras
      t.integer :score
      t.boolean :bowled_out
      t.text :summary

      t.timestamps
    end
  end

  def self.down
    drop_table :innings
  end
end
