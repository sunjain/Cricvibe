class CreateRoasters < ActiveRecord::Migration
  def self.up
    create_table :roasters do |t|
      t.integer :team_id
      t.integer :tournament_id
      t.integer :player1_id
      t.integer :player2_id
      t.integer :player3_id
      t.integer :player4_id
      t.integer :player5_id
      t.integer :player6_id
      t.integer :player7_id
      t.integer :player8_id
      t.integer :player9_id
      t.integer :player10_id
      t.integer :player11_id
      t.integer :player12_id
      t.integer :player13_id
      t.integer :player14_id
      t.integer :player15_id
      t.integer :player16_id
      t.integer :player17_id
      t.integer :player18_id
      t.integer :player19_id
      t.integer :player20_id

      t.timestamps
    end
  end

  def self.down
    drop_table :roasters
  end
end
