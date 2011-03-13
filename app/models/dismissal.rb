class Dismissal < ActiveRecord::Base
	belongs_to :batting_performance
	belongs_to :fielder, :class_name => "Player", :foreign_key => "fielder_id"
	belongs_to :bowler, :class_name => "Player", :foreign_key => "bowler_id"
end
