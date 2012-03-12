class RoastersController < ApplicationController
  # GET /roasters
  # GET /roasters.xml
  def index
    @roasters = Roaster.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @roasters }
    end
  end

  # GET /roasters/1
  # GET /roasters/1.xml
  def show
    @roaster = Roaster.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @roaster }
    end
  end

  # GET /roasters/new
  # GET /roasters/new.xml
  def new 
    @roaster = Roaster.new
		@team = Team.find(params[:team_id])
		@tournament = current_tournament

    #respond_to do |format|
      #format.html # new.html.erb
      #format.xml  { render :xml => @roaster }
    #end
  end

  # GET /roasters/1/edit
  def edit
    @roaster = Roaster.find(params[:id])
		@team = @roaster.team
		@tournament = @roaster.tournament
  end

  # POST /roasters
  # POST /roasters.xml
  def create
    @roaster = Roaster.new(params[:roaster])
		@roaster.team_id = params[:team][:id]
		@roaster.tournament_id = params[:tournament][:id]

    respond_to do |format|
      if @roaster.save
        format.html { redirect_to(@roaster, :team_id => params[:team][:id], :notice => 'Roaster was successfully created.') }
        format.xml  { render :xml => @roaster, :team_id => params[:team][:id], :status => :created, :location => @roaster }
      else
        format.html { render :action => "new", :team_id => params[:team][:id],  }
        format.xml  { render :xml => @roaster.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /roasters/1
  # PUT /roasters/1.xml
  def update
    @roaster = Roaster.find(params[:id])

    respond_to do |format|
      if @roaster.update_attributes(params[:roaster])
        format.html { redirect_to(@roaster, :notice => 'Roaster was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @roaster.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /roasters/1
  # DELETE /roasters/1.xml
  def destroy
    @roaster = Roaster.find(params[:id])
    @roaster.destroy

    respond_to do |format|
      format.html { redirect_to(roasters_url) }
      format.xml  { head :ok }
    end
  end
end
