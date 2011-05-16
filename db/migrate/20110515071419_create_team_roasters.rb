class CreateTeamRoasters < ActiveRecord::Migration
  def self.up
    create_table :team_roasters do |t|
      t.integer :team_id
      t.integer :player_id

      t.timestamps
    end
  end

  def self.down
    drop_table :team_roasters
  end
end
