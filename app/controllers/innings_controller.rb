class InningsController < ApplicationController
  # GET /innings
  # GET /innings.xml
  def index
    @innings = Inning.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @innings }
    end
  end

  # GET /innings/1
  # GET /innings/1.xml
  def show
    @inning = Inning.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @inning }
    end
  end

  # GET /innings/new
  # GET /innings/new.xml
  def new
    @inning = Inning.new
		@inning.match_id = params[:match_id]
		@inning.batting_team_id = params[:batting_team_id]
		@inning.bowling_team_id = Match.find(params[:match_id]).other_team(Team.find(params[:batting_team_id])).id
		@inning.save


		##(1..11).each do | bf |
			##@batting_performance = BattingPerformance.new
			##@batting_performance.inning = @inning
			##@batting_performance.save
			##@bowling_performance = BowlingPerformance.new
			##@bowling_performance.inning = @inning
			##@bowling_performance.save
		##end

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @inning }
    end
  end

  # GET /innings/1/edit
  def edit
    @inning = Inning.find(params[:id])
  end

  # POST /innings
  # POST /innings.xml
  def create
    @inning = Inning.new(params[:inning])

    respond_to do |format|
      if @inning.save
        format.html { redirect_to(@inning, :notice => 'Inning was successfully created.') }
        format.xml  { render :xml => @inning, :status => :created, :location => @inning }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @inning.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /innings/1
  # PUT /innings/1.xml
  def update
    @inning = Inning.find(params[:id])

    respond_to do |format|
      if @inning.update_attributes(params[:inning])
        format.html { redirect_to(@inning, :notice => 'Inning was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @inning.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /innings/1
  # DELETE /innings/1.xml
  def destroy
    @inning = Inning.find(params[:id])
    @inning.destroy

    respond_to do |format|
      format.html { redirect_to(innings_url) }
      format.xml  { head :ok }
    end
  end

	def new_batsman
		@batting_performance = BattingPerformance.new
		inning_id = params[:inning_id]
		@batting_performance.inning_id = inning_id
		@batting_performance.save
		@team = Team.find(Inning.find(inning_id).batting_team_id)
		@batting_performances = BattingPerformance.find_by_inning_id(inning_id)
		render :layout=> false
	end

	def new_dismissal
		@dismissal = Dismissal.new
		@dismissal.batting_performance_id = params[:batting_performance_id]
		render :layout=> false
	end

end
