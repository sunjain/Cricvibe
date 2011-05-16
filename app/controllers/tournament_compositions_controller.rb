class TournamentCompositionsController < ApplicationController
  # GET /tournament_compositions
  # GET /tournament_compositions.xml
  def index
    @tournament_compositions = TournamentComposition.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tournament_compositions }
    end
  end

  # GET /tournament_compositions/1
  # GET /tournament_compositions/1.xml
  def show
    @tournament_composition = TournamentComposition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tournament_composition }
    end
  end

  # GET /tournament_compositions/new
  # GET /tournament_compositions/new.xml
  def new
    @tournament_composition = TournamentComposition.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tournament_composition }
    end
  end

  # GET /tournament_compositions/1/edit
  def edit
    @tournament_composition = TournamentComposition.find(params[:id])
  end

  # POST /tournament_compositions
  # POST /tournament_compositions.xml
  def create
    @tournament_composition = TournamentComposition.new(params[:tournament_composition])

    respond_to do |format|
      if @tournament_composition.save
        format.html { redirect_to(@tournament_composition, :notice => 'Tournament composition was successfully created.') }
        format.xml  { render :xml => @tournament_composition, :status => :created, :location => @tournament_composition }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tournament_composition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tournament_compositions/1
  # PUT /tournament_compositions/1.xml
  def update
    @tournament_composition = TournamentComposition.find(params[:id])

    respond_to do |format|
      if @tournament_composition.update_attributes(params[:tournament_composition])
        format.html { redirect_to(@tournament_composition, :notice => 'Tournament composition was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tournament_composition.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tournament_compositions/1
  # DELETE /tournament_compositions/1.xml
  def destroy
    @tournament_composition = TournamentComposition.find(params[:id])
    @tournament_composition.destroy

    respond_to do |format|
      format.html { redirect_to(tournament_compositions_url) }
      format.xml  { head :ok }
    end
  end
end
