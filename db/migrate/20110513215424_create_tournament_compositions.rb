class CreateTournamentCompositions < ActiveRecord::Migration
  def self.up
    create_table :tournament_compositions do |t|
      t.integer :tournament_id
      t.integer :team_id

      t.timestamps
    end
  end

  def self.down
    drop_table :tournament_compositions
  end
end
