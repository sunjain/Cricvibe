class Match < ActiveRecord::Base
	belongs_to :tournament
	belongs_to :team1, :class_name => "Team", :foreign_key => "team1_id"
	belongs_to :team2, :class_name => "Team", :foreign_key => "team2_id"
	belongs_to :inning1, :class_name => "Inning", :foreign_key => "inning1_id"
	belongs_to :inning2, :class_name => "Inning", :foreign_key => "inning2_id"
	belongs_to :inning3, :class_name => "Inning", :foreign_key => "inning3_id"
	belongs_to :inning4, :class_name => "Inning", :foreign_key => "inning4_id"
	belongs_to :result
	belongs_to :toss_winner, :class_name => "Team", :foreign_key => "toss_winner_id"
	belongs_to  :team_batting_first, :class_name => "Team", :foreign_key => "team_batting_first_id"
end
