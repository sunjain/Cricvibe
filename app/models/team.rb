class Team < ActiveRecord::Base
	has_many :players
	has_many :results
	accepts_nested_attributes_for :players
	has_many :matches
	has_many :innings
end
