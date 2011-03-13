class BattingPerformance < ActiveRecord::Base
	belongs_to :player
	belongs_to :inning
	has_one :dismissal
	accepts_nested_attributes_for :dismissal
end
