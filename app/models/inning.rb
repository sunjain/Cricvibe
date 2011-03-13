class Inning < ActiveRecord::Base
	has_one :match
	belongs_to :batting_team, :class_name => "team"
	belongs_to :bowling_team, :class_name => "team"
	has_many :batting_performances
	has_many :bowling_performances
	accepts_nested_attributes_for :batting_performances
	accepts_nested_attributes_for :bowling_performances
end
