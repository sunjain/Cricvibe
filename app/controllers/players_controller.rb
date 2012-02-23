class PlayersController < ApplicationController
  # GET /players
  # GET /players.xml
  def index
    @players = Player.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @players }
    end
  end

  # GET /players/1
  # GET /players/1.xml
  def show
    @player = Player.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @player }
    end
  end

  # GET /players/new
  # GET /players/new.xml
  def new
    @player = Player.new

		@team = Team.find(session[:current_team_id])

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @player }
    end
  end

  # GET /players/1/edit
  def edit
    @player = Player.find(params[:id])
  end

  # POST /players
  # POST /players.xml
  def create
    @player = Player.new(params[:player])
		@player.organization_id = current_organization.id
		@team = Team.find(params[:team][:id])
		@team.tournament_roaster(current_tournament.id).add_player_to_roaster(@player)

    respond_to do |format|
      if @player.save
        ##format.html { redirect_to(@player, :notice => 'Player was successfully created.') }
        ##format.html { redirect_to new_roaster_path, :team_id => session[:current_team_id], :notice => 'Player was successfully created.' }
				redirect_to request.env['HTTP_REFERER']
        ###format.html { redirect_to :controller => 'roasters', :action => 'new', :team_id => session[:current_team_id], :notice => 'Player was successfully created.' }
        format.xml  { render :xml => @player, :status => :created, :location => @player }

      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @player.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /players/1
  # PUT /players/1.xml
  def update
    @player = Player.find(params[:id])

    respond_to do |format|
      if @player.update_attributes(params[:player])
        format.html { redirect_to(@player, :notice => 'Player was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @player.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /players/1
  # DELETE /players/1.xml
  def destroy
    @player = Player.find(params[:id])
    @player.destroy

    respond_to do |format|
      format.html { redirect_to(players_url) }
      format.xml  { head :ok }
    end
  end
end
