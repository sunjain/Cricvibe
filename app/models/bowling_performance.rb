class BowlingPerformance < ActiveRecord::Base
	belongs_to :player
	belongs_to :inning
end
