class Player < ActiveRecord::Base
	#has_one :team, :autosave => true
	belongs_to :team
	has_many :batting_performances
	has_many :bowling_performances
	has_many :dismissals
	has_many :team_compositions
	has_many :roasters
	belongs_to :organization

	accepts_nested_attributes_for :batting_performances, :allow_destroy => true
	accepts_nested_attributes_for :bowling_performances, :allow_destroy => true
	accepts_nested_attributes_for :dismissals, :allow_destroy => true
end
