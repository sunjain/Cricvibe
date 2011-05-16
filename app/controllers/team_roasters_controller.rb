class TeamRoastersController < ApplicationController
  # GET /team_roasters
  # GET /team_roasters.xml
  def index
    @team_roasters = TeamRoaster.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @team_roasters }
    end
  end

  # GET /team_roasters/1
  # GET /team_roasters/1.xml
  def show
    @team_roaster = TeamRoaster.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @team_roaster }
    end
  end

  # GET /team_roasters/new
  # GET /team_roasters/new.xml
  def new
    @team_roaster = TeamRoaster.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @team_roaster }
    end
  end

  # GET /team_roasters/1/edit
  def edit
    @team_roaster = TeamRoaster.find(params[:id])
  end

  # POST /team_roasters
  # POST /team_roasters.xml
  def create
    @team_roaster = TeamRoaster.new(params[:team_roaster])

    respond_to do |format|
      if @team_roaster.save
        format.html { redirect_to(@team_roaster, :notice => 'Team roaster was successfully created.') }
        format.xml  { render :xml => @team_roaster, :status => :created, :location => @team_roaster }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @team_roaster.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /team_roasters/1
  # PUT /team_roasters/1.xml
  def update
    @team_roaster = TeamRoaster.find(params[:id])

    respond_to do |format|
      if @team_roaster.update_attributes(params[:team_roaster])
        format.html { redirect_to(@team_roaster, :notice => 'Team roaster was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @team_roaster.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /team_roasters/1
  # DELETE /team_roasters/1.xml
  def destroy
    @team_roaster = TeamRoaster.find(params[:id])
    @team_roaster.destroy

    respond_to do |format|
      format.html { redirect_to(team_roasters_url) }
      format.xml  { head :ok }
    end
  end
end
