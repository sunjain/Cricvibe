class Match < ActiveRecord::Base
	belongs_to :tournament
	belongs_to :team1, :class_name => "Team"
	belongs_to :team2, :class_name => "Team"
	has_many :innings
	has_one :result
	belongs_to :toss_winner, :class_name => "Team"
	belongs_to :winner, :class_name => "Team"
	belongs_to  :team_batting_first, :class_name => "Team"
	belongs_to :venue
	belongs_to :inning1, :class_name => "Inning"
	belongs_to :inning2, :class_name => "Inning"
	accepts_nested_attributes_for :result

	def other_team this_team
		if this_team == self.team1 then 
			self.team2 
		else 
			if this_team == self.team2 then
				self.team1
			end
		end
	end

	def get_this_inning num
		Inning.find
	end

	
end
