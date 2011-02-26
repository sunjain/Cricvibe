class TeamForTheMatchesController < ApplicationController
  # GET /team_for_the_matches
  # GET /team_for_the_matches.xml
  def index
    @team_for_the_matches = TeamForTheMatch.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @team_for_the_matches }
    end
  end

  # GET /team_for_the_matches/1
  # GET /team_for_the_matches/1.xml
  def show
    @team_for_the_match = TeamForTheMatch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @team_for_the_match }
    end
  end

  # GET /team_for_the_matches/new
  # GET /team_for_the_matches/new.xml
  def new
    @team_for_the_match = TeamForTheMatch.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @team_for_the_match }
    end
  end

  # GET /team_for_the_matches/1/edit
  def edit
    @team_for_the_match = TeamForTheMatch.find(params[:id])
  end

  # POST /team_for_the_matches
  # POST /team_for_the_matches.xml
  def create
    @team_for_the_match = TeamForTheMatch.new(params[:team_for_the_match])

    respond_to do |format|
      if @team_for_the_match.save
        format.html { redirect_to(@team_for_the_match, :notice => 'Team for the match was successfully created.') }
        format.xml  { render :xml => @team_for_the_match, :status => :created, :location => @team_for_the_match }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @team_for_the_match.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /team_for_the_matches/1
  # PUT /team_for_the_matches/1.xml
  def update
    @team_for_the_match = TeamForTheMatch.find(params[:id])

    respond_to do |format|
      if @team_for_the_match.update_attributes(params[:team_for_the_match])
        format.html { redirect_to(@team_for_the_match, :notice => 'Team for the match was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @team_for_the_match.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /team_for_the_matches/1
  # DELETE /team_for_the_matches/1.xml
  def destroy
    @team_for_the_match = TeamForTheMatch.find(params[:id])
    @team_for_the_match.destroy

    respond_to do |format|
      format.html { redirect_to(team_for_the_matches_url) }
      format.xml  { head :ok }
    end
  end
end
