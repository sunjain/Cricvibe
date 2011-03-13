class Result < ActiveRecord::Base
	belongs_to :match
	has_one :winner, :class_name => "Team"
	accepts_nested_attributes_for :winner, :class_name => "Team"
end
