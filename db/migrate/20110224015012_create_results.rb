class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.integer :type
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :results
  end
end
