class BowlingPerformance < ActiveRecord::Base
	belongs_to :player
	has_one :inning
end
