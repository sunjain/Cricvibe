class Roaster < ActiveRecord::Base
	belongs_to :player1, :class_name => "Player", :foreign_key => :player1_id
	belongs_to :player2, :class_name => "Player", :foreign_key => :player2_id
	belongs_to :player3, :class_name => "Player", :foreign_key => :player3_id
	belongs_to :player4, :class_name => "Player", :foreign_key => :player4_id
	belongs_to :player5, :class_name => "Player", :foreign_key => :player5_id
	belongs_to :player6, :class_name => "Player", :foreign_key => :player6_id
	belongs_to :player7, :class_name => "Player", :foreign_key => :player7_id
	belongs_to :player8, :class_name => "Player", :foreign_key => :player8_id
	belongs_to :player9, :class_name => "Player", :foreign_key => :player9_id
	belongs_to :player10, :class_name => "Player", :foreign_key => :player10_id
	belongs_to :player11, :class_name => "Player", :foreign_key => :player11_id
	belongs_to :player12, :class_name => "Player", :foreign_key => :player12_id
	belongs_to :player13, :class_name => "Player", :foreign_key => :player13_id
	belongs_to :player14, :class_name => "Player", :foreign_key => :player14_id
	belongs_to :player15, :class_name => "Player", :foreign_key => :player15_id
	belongs_to :player16, :class_name => "Player", :foreign_key => :player16_id
	belongs_to :player17, :class_name => "Player", :foreign_key => :player17_id
	belongs_to :player18, :class_name => "Player", :foreign_key => :player18_id
	belongs_to :player19, :class_name => "Player", :foreign_key => :player19_id
	belongs_to :player20, :class_name => "Player", :foreign_key => :player20_id
	belongs_to :team
	belongs_to :tournament

	validate :duplicate_players


	def roaster_players
		@roaster_plyrs = []
		@roaster_plyrs << self.player1 if self.player1
		@roaster_plyrs << self.player2 if self.player2
		@roaster_plyrs << self.player3 if self.player3
		@roaster_plyrs << self.player4 if self.player4
		@roaster_plyrs << self.player5 if self.player5
		@roaster_plyrs << self.player6 if self.player6
		@roaster_plyrs << self.player7 if self.player7
		@roaster_plyrs << self.player8 if self.player8
		@roaster_plyrs << self.player9 if self.player9
		@roaster_plyrs << self.player10 if self.player10
		@roaster_plyrs << self.player11 if self.player11
		@roaster_plyrs << self.player12 if self.player12
		@roaster_plyrs << self.player13 if self.player13
		@roaster_plyrs << self.player14 if self.player14
		@roaster_plyrs << self.player15 if self.player15
		@roaster_plyrs << self.player16 if self.player16
		@roaster_plyrs << self.player17 if self.player17
		@roaster_plyrs << self.player18 if self.player18
		@roaster_plyrs << self.player19 if self.player19
		@roaster_plyrs << self.player20 if self.player20
		@roaster_plyrs
	end
	
	def duplicate_players
		@player_list = roaster_players
		@player_list.each do | player |
			count = 0
			count = @player_list.inject(0) do | result, plyr | 
				if plyr.id == player.id then result = result + 1 else result end 
			end
			if count > 1 then 
				errors.add_to_base("#{player.name} duplicate") 
				return
			end
		end
	end

	def add_player_to_roaster (player)
		if self.player1.nil? then
			self.player1 = player
			self.save
			return
		end
		if self.player2.nil? then
			self.player2 = player
			self.save
			return
		end
		if self.player3.nil? then
			self.player3 = player
			self.save
			return
		end
		if self.player4.nil? then
			self.player4 = player
			self.save
			return
		end
		if self.player5.nil? then
			self.player5 = player
			self.save
			return
		end
		if self.player6.nil? then
			self.player6 = player
			self.save
			return
		end
		if self.player7.nil? then
			self.player7 = player
			self.save
			return
		end
		if self.player8.nil? then
			self.player8 = player
			self.save
			return
		end
		if self.player9.nil? then
			self.player9 = player
			self.save
			return
		end
		if self.player10.nil? then
			self.player10 = player
			self.save
			return
		end
		if self.player11.nil? then
			self.player11 = player
			self.save
			return
		end
		if self.player12.nil? then
			self.player12 = player
			self.save
			return
		end
		if self.player13.nil? then
			self.player13 = player
			self.save
			return
		end
		if self.player14.nil? then
			self.player14 = player
			self.save
			return
		end
		if self.player15.nil? then
			self.player15 = player
			self.save
			return
		end
		if self.player16.nil? then
			self.player16 = player
			self.save
			return
		end
		if self.player17.nil? then
			self.player17 = player
			self.save
			return
		end
		if self.player18.nil? then
			self.player18 = player
			self.save
			return
		end
		if self.player19.nil? then
			self.player19 = player
			self.save
			return
		end
		if self.player20.nil? then
			self.player20 = player
			self.save
			return
		end
	end
end
