class MatchesController < ApplicationController
  # GET /matches
  # GET /matches.xml
  def index
    @matches = Match.all
    #@matches = Match.find(:all, 
		#:condition => [tournament_id = ?", 
		#current_tournament])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @matches }
    end
  end

  # GET /matches/1
  # GET /matches/1.xml
  def show
    @match = Match.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @match }
    end
  end

  # GET /matches/new
  # GET /matches/new.xml
  def new
		session[:match_params] ||= {}
		session[:match_step] = nil
		@match = Match.new(session[:match_params])
		@match.current_step = session[:match_step]
											 
    ##@match = Match.new

    ##respond_to do |format|
      ##format.html # new.html.erb
      ##format.xml  { render :xml => @match }
    ##end
  end

  # GET /matches/1/edit
  def edit
    @match = Match.find(params[:id])
  end

  # POST /matches
  # POST /matches.xml
  def create

		session[:match_params].deep_merge!(params[:match])if params[:match]
		session[:team1_composition] = params[:team1_composition] if params[:team1_composition]
		session[:team2_composition] = params[:team2_composition] if params[:team2_composition]
		@match = Match.new(session[:match_params])
		@match.current_step = session[:match_step]

		if @match.valid?
			if params[:previous_button]
				@match.previous_step
			elsif @match.last_step? then
				if session[:team1_composition] then
					@match.team1_composition = TeamComposition.new(session[:team1_composition])
					@match.team1_composition.team_id = @match.team1_id
					@match.team1_composition.save
				end
				if session[:team2_composition] then
					@match.team2_composition = TeamComposition.new(session[:team2_composition])
					@match.team2_composition.team_id = @match.team2_id
					@match.team2_composition.save
				end
				@match.save if @match.all_valid?
			else
				@match.next_step
			end
			session[:match_step] = @match.current_step
		end

		if @match.new_record?
			render 'new'
		else
			session[:match_step] = session[:match_params] = nil
			session[:team1_composition] = session[:team2_composition] = nil
			flash[:notice] = "Match Saved"
			redirect_to edit_match_path(@match)
			#redirect_to @match
		 	#redirect_to :controller => :innings , :action => :new, :match_id => @match.id, :batting_team_id => @match.team_batting_first.id, :which_inning => 1 
		end


    #@match = Match.new(params[:match])
    #respond_to do |format|
      #if @match.save
        #format.html { redirect_to(@match, :notice => 'Match was successfully created.') }
        #format.xml  { render :xml => @match, :status => :created, :location => @match }
      #else
        #format.html { render :action => "new" }
        #format.xml  { render :xml => @match.errors, :status => :unprocessable_entity }
      #end
    #end
  end

  # PUT /matches/1
  # PUT /matches/1.xml
  def update
    @match = Match.find(params[:id])

    respond_to do |format|
      if @match.update_attributes(params[:match])
        format.html { redirect_to(@match, :notice => 'Match was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @match.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /matches/1
  # DELETE /matches/1.xml
  def destroy
    @match = Match.find(params[:id])
    @match.destroy

    respond_to do |format|
      format.html { redirect_to(matches_url) }
      format.xml  { head :ok }
    end
  end
end
