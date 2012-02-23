class Team < ActiveRecord::Base
	has_many :players
	has_many :results
	accepts_nested_attributes_for :players
	has_many :matches
	has_many :innings
	has_many :roasters
	has_many :team_compositions

	def tournament_roaster(tournament_id)
		roaster = self.roasters.detect { | r | r.tournament_id == tournament_id }
	end
	
	def tournament_players(tournament_id)
		#@player_list = []
	
		
		###roaster = self.roasters.detect { | r | r.tournament_id == tournament_id }
		roaster = self.tournament_roaster(tournament_id)
		
		if roaster.nil?  then return @player_list end
		
		roaster.roaster_players
		
		
		#roaster = Roaster.where("tournament_id=? and team_id = ?", tournament_id, self.id)
		
		##@tournament_player_list << roaster.player1 if roaster.player1
		##@tournament_player_list << roaster.player2 if roaster.player2
		##@tournament_player_list << roaster.player3 if roaster.player3
		##@tournament_player_list << roaster.player4 if roaster.player4
		##@tournament_player_list << roaster.player5 if roaster.player5
		##@tournament_player_list << roaster.player6 if roaster.player6
		##@tournament_player_list << roaster.player7 if roaster.player7
		##@tournament_player_list << roaster.player8 if roaster.player8
		##@tournament_player_list << roaster.player9 if roaster.player9
		##@tournament_player_list << roaster.player10 if roaster.player10
		##@tournament_player_list << roaster.player11 if roaster.player11
		##@tournament_player_list << roaster.player12 if roaster.player12
		##@tournament_player_list << roaster.player13 if roaster.player13
		##@tournament_player_list << roaster.player14 if roaster.player14
		##@tournament_player_list << roaster.player15 if roaster.player15
		##@tournament_player_list << roaster.player16 if roaster.player16
		##@tournament_player_list << roaster.player17 if roaster.player17
		##@tournament_player_list << roaster.player18 if roaster.player18
		##@tournament_player_list << roaster.player19 if roaster.player19
		##@tournament_player_list << roaster.player20 if roaster.player20
		#@tournament_player_list
	end

	def match_players(match_id)
		@match_player_list = []
		team_composition = self.team_compositions.detect { | t | t.match_id == match_id }
		@match_player_list << team_composition.player1 if team_composition.player1
		@match_player_list << team_composition.player2 if team_composition.player2
		@match_player_list << team_composition.player3 if team_composition.player3
		@match_player_list << team_composition.player4 if team_composition.player4
		@match_player_list << team_composition.player5 if team_composition.player5
		@match_player_list << team_composition.player6 if team_composition.player6
		@match_player_list << team_composition.player7 if team_composition.player7
		@match_player_list << team_composition.player8 if team_composition.player8
		@match_player_list << team_composition.player9 if team_composition.player9
		@match_player_list << team_composition.player10 if team_composition.player10
		@match_player_list << team_composition.player11 if team_composition.player11
		@match_player_list
	end

end
