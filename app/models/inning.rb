class Inning < ActiveRecord::Base
	has_one :match
	belongs_to :batting_team, :class_name => "Team"
	belongs_to :bowling_team, :class_name => "Team"
	has_many :batting_performances
	has_many :bowling_performances
	accepts_nested_attributes_for :batting_performances
	accepts_nested_attributes_for :bowling_performances
end
