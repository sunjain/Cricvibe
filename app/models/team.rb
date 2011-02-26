class Team < ActiveRecord::Base
	belongs_to :player1, :class_name => "Player", :foreign_key => "player1_id", :autosave => true
	belongs_to :player2, :class_name => "Player", :foreign_key => "player2_id", :autosave => true
	belongs_to :player3, :class_name => "Player", :foreign_key => "player3_id", :autosave => true
	belongs_to :player4, :class_name => "Player", :foreign_key => "player4_id", :autosave => true
	belongs_to :player5, :class_name => "Player", :foreign_key => "player5_id", :autosave => true
	belongs_to :player6, :class_name => "Player", :foreign_key => "player6_id", :autosave => true
	belongs_to :player7, :class_name => "Player", :foreign_key => "player7_id", :autosave => true
	belongs_to :player8, :class_name => "Player", :foreign_key => "player8_id", :autosave => true
	belongs_to :player9, :class_name => "Player", :foreign_key => "player9_id", :autosave => true
	belongs_to :player10, :class_name => "Player", :foreign_key => "player10_id", :autosave => true
	belongs_to :player11, :class_name => "Player", :foreign_key => "player11_id", :autosave => true
	belongs_to :player12, :class_name => "Player", :foreign_key => "player12_id", :autosave => true
	belongs_to :player13, :class_name => "Player", :foreign_key => "player13_id", :autosave => true
	belongs_to :player14, :class_name => "Player", :foreign_key => "player14_id", :autosave => true
	belongs_to :player15, :class_name => "Player", :foreign_key => "player15_id", :autosave => true
	belongs_to :player16, :class_name => "Player", :foreign_key => "player16_id", :autosave => true
	belongs_to :player17, :class_name => "Player", :foreign_key => "player17_id", :autosave => true
	belongs_to :player18, :class_name => "Player", :foreign_key => "player18_id", :autosave => true
	belongs_to :player19, :class_name => "Player", :foreign_key => "player19_id", :autosave => true
	belongs_to :player20, :class_name => "Player", :foreign_key => "player20_id", :autosave => true
	belongs_to :tournament
	has_many :results
	has_many :matches
end
