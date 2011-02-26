class Dismissal < ActiveRecord::Base
	belongs_to :batting_performance
	has_one :fielder, :class => "Player", :foriegn_key => "fielder_id"
	has_one :bowler, :class => "Player", :foriegn_key => "bowler_id"
end
