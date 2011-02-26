class CreateDismissals < ActiveRecord::Migration
  def self.up
    create_table :dismissals do |t|
      t.integer :type
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :dismissals
  end
end
