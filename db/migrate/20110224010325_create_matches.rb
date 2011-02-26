class CreateMatches < ActiveRecord::Migration
  def self.up
    create_table :matches do |t|
      t.date :played_on
      t.string :venue
      t.integer :overs

      t.timestamps
    end
  end

  def self.down
    drop_table :matches
  end
end
