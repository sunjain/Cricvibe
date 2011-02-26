class Player < ActiveRecord::Base
	has_one :team, :autosave => true
	has_many :batting_performances
	has_many :bowling_performance
	has_many :dismissal

	accepts_nested_attributes_for :team, :allow_destroy => true
end
