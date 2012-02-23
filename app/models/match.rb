class Match < ActiveRecord::Base
	belongs_to :tournament
	belongs_to :team1, :class_name => "Team"
	belongs_to :team2, :class_name => "Team"
	#has_many :innings
	has_one :result
	has_one :team1_composition, :class_name => "TeamComposition"
	has_one :team2_composition, :class_name => "TeamComposition"
	belongs_to :toss_winner, :class_name => "Team"
	belongs_to :winner, :class_name => "Team"
	belongs_to  :team_batting_first, :class_name => "Team"
	belongs_to :venue
	belongs_to :inning1, :class_name => "Inning"
	belongs_to :inning2, :class_name => "Inning"
	accepts_nested_attributes_for :result
	accepts_nested_attributes_for :team1_composition, :allow_destroy => true
	accepts_nested_attributes_for :team2_composition, :allow_destroy => true

	#accepts_nested_attributes_for :team1_composition, :class_name => "TeamComposition", :allow_destroy => true
	#accepts_nested_attributes_for :team2_composition, :class_name => "TeamComposition", :allow_destroy => true

	validates_presence_of :team1, :if => :teams?
	validates_presence_of :team2, :if => :teams?
	validates_presence_of :toss_winner, :if => :toss?
	validate :teams_not_same, :if => :teams?

	def teams_not_same
		if team1.nil? or team2.nil? then return false end
		errors.add("Can not have same two teams:", team1.name) if
			team1 == team2
	end
	
	attr_writer :current_step


	def teams?
		current_step == "teams"
	end

	def toss?
		current_step == "toss"
	end


	def other_team this_team
		if this_team == self.team1 then 
			self.team2 
		else 
			if this_team == self.team2 then
				self.team1
			end
		end
	end


	def other_inning(this_inning)
		if this_inning == self.inning1 then 
			self.inning2 
		else 
			if this_inning == self.inning2 then
				self.inning1
			end
		end
	end

	def get_this_inning num
		Inning.find
	end

	def current_step
		@current_step || steps.first
	end

	def steps
		%w[tournament teams team1_composition team2_composition toss rest]
		#%w[tournament teams toss rest]
	end

	def all_valid?
		steps.all? do |step|
			self.current_step = step
			valid?
		end
	end

	def last_step?
		current_step == steps.last
	end

	def first_step?
		current_step == steps.first
	end

  def next_step  
    self.current_step = steps[steps.index(current_step)+1]  
  end  
	
	def previous_step
		self.current_step = steps[steps.index(current_step)-1]
	end
	
end
