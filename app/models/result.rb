class Result < ActiveRecord::Base
	has_one :match
	belongs_to :winner , :class => "team", :foreign_key => "winner_id"
end
