class CreateTeamForTheMatches < ActiveRecord::Migration
  def self.up
    create_table :team_for_the_matches do |t|
      t.integer :team_id
      t.integer :match_id
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

      t.timestamps
    end
  end

  def self.down
    drop_table :team_for_the_matches
  end
end
