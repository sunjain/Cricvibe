class Tournament < ActiveRecord::Base
	has_many :teams
	has_many :matches
	has_many :roasters
	accepts_nested_attributes_for :teams
	accepts_nested_attributes_for :matches
	belongs_to :organization

	def top_batsman_of_the_week organization_id, tournament_id
		org = Organization.find(organization_id)
		tournament = Tournament.find(:all, :conditions => ['id=? and organization_id =?', tournament_id, organization_id])

		
		
	end

	def top_batsman_of_the_week
	end

end
