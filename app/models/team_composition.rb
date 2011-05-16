class TeamComposition < ActiveRecord::Base
	belings_to :team
	belongs_to :match
	belongs_to :player1, :class => "Player", :foreign_key => "player1_id"
	belongs_to :player2, :class => "Player", :foreign_key => "player2_id"
	belongs_to :player3, :class => "Player", :foreign_key => "player3_id"
	belongs_to :player4, :class => "Player", :foreign_key => "player4_id"
	belongs_to :player5, :class => "Player", :foreign_key => "player5_id"
	belongs_to :player6, :class => "Player", :foreign_key => "player6_id"
	belongs_to :player7, :class => "Player", :foreign_key => "player7_id"
	belongs_to :player8, :class => "Player", :foreign_key => "player8_id"
	belongs_to :player9, :class => "Player", :foreign_key => "player9_id"
	belongs_to :player10, :class => "Player", :foreign_key => "player10_id"
	belongs_to :player11, :class => "Player", :foreign_key => "player11_id"
end
