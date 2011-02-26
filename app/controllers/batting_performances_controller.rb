class BattingPerformancesController < ApplicationController
  # GET /batting_performances
  # GET /batting_performances.xml
  def index
    @batting_performances = BattingPerformance.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @batting_performances }
    end
  end

  # GET /batting_performances/1
  # GET /batting_performances/1.xml
  def show
    @batting_performance = BattingPerformance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @batting_performance }
    end
  end

  # GET /batting_performances/new
  # GET /batting_performances/new.xml
  def new
    @batting_performance = BattingPerformance.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @batting_performance }
    end
  end

  # GET /batting_performances/1/edit
  def edit
    @batting_performance = BattingPerformance.find(params[:id])
  end

  # POST /batting_performances
  # POST /batting_performances.xml
  def create
    @batting_performance = BattingPerformance.new(params[:batting_performance])

    respond_to do |format|
      if @batting_performance.save
        format.html { redirect_to(@batting_performance, :notice => 'Batting performance was successfully created.') }
        format.xml  { render :xml => @batting_performance, :status => :created, :location => @batting_performance }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @batting_performance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /batting_performances/1
  # PUT /batting_performances/1.xml
  def update
    @batting_performance = BattingPerformance.find(params[:id])

    respond_to do |format|
      if @batting_performance.update_attributes(params[:batting_performance])
        format.html { redirect_to(@batting_performance, :notice => 'Batting performance was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @batting_performance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /batting_performances/1
  # DELETE /batting_performances/1.xml
  def destroy
    @batting_performance = BattingPerformance.find(params[:id])
    @batting_performance.destroy

    respond_to do |format|
      format.html { redirect_to(batting_performances_url) }
      format.xml  { head :ok }
    end
  end
end
