class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :userid
      t.string :hashed_password
      t.string :salt
      t.string :name
      t.string :email
      t.string :phone_home
      t.string :phone_cell

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
