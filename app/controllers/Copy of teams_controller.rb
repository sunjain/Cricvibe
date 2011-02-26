class TeamsController < ApplicationController
  # GET /teams
  # GET /teams.xml
  def index
    @teams = Team.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @teams }
    end
  end

  # GET /teams/1
  # GET /teams/1.xml
  def show
    @team = Team.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @team }
    end
  end

  # GET /teams/new
  # GET /teams/new.xml
  def new
    @team = Team.new

		@player1 = Player.new; @player2 = Player.new; @player3 = Player.new;
		@player4 = Player.new; @player5 = Player.new; @player6 = Player.new;
		@player7 = Player.new; @player8 = Player.new; @player9 = Player.new;
		@player10 = Player.new; @player11 = Player.new; @player12 = Player.new
		@player13 = Player.new; @player14 = Player.new; @player15 = Player.new;
		@player16 = Player.new; @player18 = Player.new; @player19 = Player.new;
		@player20 = Player.new;


    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @team }
    end
  end

  # GET /teams/1/edit
  def edit
    @team = Team.find(params[:id])
		@player1 = @team.player1; @player2 = @team.player2; @player3 = @team.player3;
		@player4 = @team.player4; @player5 = @team.player5; @player6 = @team.player6;
		@player7 = @team.player7; @player8 = @team.player8; @player9 = @team.player9;
		@player10 = @team.player10; @player11 = @team.player11; @player12 = @team.player12;
		@player13 = @team.player13; @player14 = @team.player14; @player15 = @team.player15;
		@player16 = @team.player16; @player17 = @team.player17; @player18 = @team.player18;
		@player19 = @team.player19; @player20 = @team.player20; 
  end

  # POST /teams
  # POST /teams.xml
  def create
    @team = Team.new(params[:team])
		
		@team.player1 = Player.new(params[:player1]); @team.player2 = Player.new(params[:player2]); @team.player3 = Player.new(params[:player3]);
		@team.player4 = Player.new(params[:player4]); @team.player5 = Player.new(params[:player5]); @team.player6 = Player.new(params[:player6]);
		@team.player7 = Player.new(params[:player7]); @team.player8 = Player.new(params[:player8]); @team.player9 = Player.new(params[:player9]);
		@team.player10 = Player.new(params[:player10]); @team.player11 = Player.new(params[:player11]); @team.player12 = Player.new(params[:player12]);
		@team.player13 = Player.new(params[:player13]); @team.player14 = Player.new(params[:player14]); @team.player15 = Player.new(params[:player15]);
		@team.player16 = Player.new(params[:player16]); @team.player18 = Player.new(params[:player18]); @team.player19 = Player.new(params[:player19]);
		@team.player20 = Player.new(params[:player20]);

    respond_to do |format|
      if @team.save
        format.html { redirect_to(@team, :notice => 'Team was successfully created.') }
        format.xml  { render :xml => @team, :status => :created, :location => @team }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @team.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /teams/1
  # PUT /teams/1.xml
  def update
    @team = Team.find(params[:id])

    respond_to do |format|
      ##if @team.update_attributes(params[:team]) && 
      @team.update_attributes(params[:team])  
			unless @team.player1.nil? then @team.player1.update_attributes(params[:player1]) end   
			unless @team.player2.nil? then @team.player2.update_attributes(params[:player2]) end  
			unless @team.player3.nil? then @team.player3.update_attributes(params[:player3]) end 
			unless @team.player4.nil? then @team.player4.update_attributes(params[:player4]) end 
			unless @team.player5.nil? then @team.player5.update_attributes(params[:player5]) end  
			unless @team.player6.nil? then @team.player6.update_attributes(params[:player6]) end  
			unless @team.player7.nil? then @team.player7.update_attributes(params[:player7]) end  
			unless @team.player8.nil? then @team.player8.update_attributes(params[:player8]) end  
			unless @team.player9.nil? then @team.player9.update_attributes(params[:player9]) end  
			unless @team.player10.nil? then @team.player10.update_attributes(params[:player10]) end  
			unless @team.player11.nil? then @team.player11.update_attributes(params[:player11]) end  
			unless @team.player12.nil? then @team.player12.update_attributes(params[:player12]) end  
			unless @team.player13.nil? then @team.player13.update_attributes(params[:player13]) end  
			unless @team.player14.nil? then @team.player14.update_attributes(params[:player14]) end  
			unless @team.player15.nil? then @team.player15.update_attributes(params[:player15]) end  
			unless @team.player16.nil? then @team.player16.update_attributes(params[:player16]) end  
			unless @team.player17.nil? then @team.player17.update_attributes(params[:player17]) end  
			unless @team.player18.nil? then @team.player18.update_attributes(params[:player18]) end  
			unless @team.player19.nil? then @team.player19.update_attributes(params[:player19]) end  
			unless @team.player20.nil? then @team.player20.update_attributes(params[:player20]) end 
			
			if @team.errors.empty?
        format.html { redirect_to(@team, :notice => 'Team was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @team.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /teams/1
  # DELETE /teams/1.xml
  def destroy
    @team = Team.find(params[:id])
    @team.destroy

    respond_to do |format|
      format.html { redirect_to(teams_url) }
      format.xml  { head :ok }
    end
  end
	
	def add_player
		@player = Player.mew
	end

end
