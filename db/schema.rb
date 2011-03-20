# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110318230955) do

  create_table "batting_performances", :force => true do |t|
    t.integer  "runs"
    t.integer  "balls"
    t.integer  "mins"
    t.integer  "fours"
    t.integer  "sixes"
    t.integer  "singles"
    t.integer  "doubles"
    t.integer  "triples"
    t.integer  "dot_balls"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "player_id"
    t.integer  "inning_id"
    t.integer  "position"
  end

  create_table "bowling_performances", :force => true do |t|
    t.float    "overs"
    t.integer  "wickets"
    t.integer  "runs"
    t.integer  "maidens"
    t.integer  "wides"
    t.integer  "noballs"
    t.integer  "legbyes"
    t.integer  "extras"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "player_id"
    t.integer  "inning_id"
  end

  create_table "dismissals", :force => true do |t|
    t.integer  "dismissal_type"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "bowler_id"
    t.integer  "fielder_id"
    t.integer  "batting_performance_id"
  end

  create_table "innings", :force => true do |t|
    t.float    "overs"
    t.integer  "wides"
    t.integer  "noballs"
    t.integer  "legbyes"
    t.integer  "byes"
    t.integer  "extras"
    t.integer  "score"
    t.boolean  "bowled_out"
    t.text     "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "match_id"
    t.integer  "batting_team_id"
    t.integer  "bowling_team_id"
    t.integer  "team_id"
    t.integer  "wickets"
  end

  create_table "matches", :force => true do |t|
    t.date     "played_on"
    t.integer  "overs"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "how_many_innings",      :default => 2
    t.integer  "toss_winner_id"
    t.integer  "team_batting_first_id"
    t.integer  "result_id"
    t.integer  "winner_id"
    t.integer  "tournament_id"
    t.integer  "team1_id"
    t.integer  "team2_id"
    t.integer  "venue_id"
    t.integer  "inning1_id"
    t.integer  "inning2_id"
  end

  create_table "players", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
  end

  create_table "results", :force => true do |t|
    t.integer  "type"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "winner_id"
  end

  create_table "team_for_the_matches", :force => true do |t|
    t.integer  "team_id"
    t.integer  "match_id"
    t.integer  "player1_id"
    t.integer  "player2_id"
    t.integer  "player3_id"
    t.integer  "player4_id"
    t.integer  "player5_id"
    t.integer  "player6_id"
    t.integer  "player7_id"
    t.integer  "player8_id"
    t.integer  "player9_id"
    t.integer  "player10_id"
    t.integer  "player11_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tournaments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "userid"
    t.string   "hashed_password"
    t.string   "salt"
    t.string   "name"
    t.string   "email"
    t.string   "phone_home"
    t.string   "phone_cell"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
