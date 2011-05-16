class TeamCompositionsController < ApplicationController
  # GET /team_compositions
  # GET /team_compositions.xml
  def index
    @team_compositions = TeamComposition.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @team_compositions }
    end
  end

  # GET /team_compositions/1
  # GET /team_compositions/1.xml
  def show
    @team_composition = TeamComposition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @team_composition }
    end
  end

  # GET /team_compositions/new
  # GET /team_compositions/new.xml
  def new
    @team_composition = TeamComposition.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @team_composition }
    end
  end

  # GET /team_compositions/1/edit
  def edit
    @team_composition = TeamComposition.find(params[:id])
  end

  # POST /team_compositions
  # POST /team_compositions.xml
  def create
    @team_composition = TeamComposition.new(params[:team_composition])

    respond_to do |format|
      if @team_composition.save
        format.html { redirect_to(@team_composition, :notice => 'Team composition was successfully created.') }
        format.xml  { render :xml => @team_composition, :status => :created, :location => @team_composition }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @team_composition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /team_compositions/1
  # PUT /team_compositions/1.xml
  def update
    @team_composition = TeamComposition.find(params[:id])

    respond_to do |format|
      if @team_composition.update_attributes(params[:team_composition])
        format.html { redirect_to(@team_composition, :notice => 'Team composition was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @team_composition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /team_compositions/1
  # DELETE /team_compositions/1.xml
  def destroy
    @team_composition = TeamComposition.find(params[:id])
    @team_composition.destroy

    respond_to do |format|
      format.html { redirect_to(team_compositions_url) }
      format.xml  { head :ok }
    end
  end
end
