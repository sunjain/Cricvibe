class BowlingPerformancesController < ApplicationController
  # GET /bowling_performances
  # GET /bowling_performances.xml
  def index
    @bowling_performances = BowlingPerformance.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bowling_performances }
    end
  end

  # GET /bowling_performances/1
  # GET /bowling_performances/1.xml
  def show
    @bowling_performance = BowlingPerformance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bowling_performance }
    end
  end

  # GET /bowling_performances/new
  # GET /bowling_performances/new.xml
  def new
    @bowling_performance = BowlingPerformance.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bowling_performance }
    end
  end

  # GET /bowling_performances/1/edit
  def edit
    @bowling_performance = BowlingPerformance.find(params[:id])
  end

  # POST /bowling_performances
  # POST /bowling_performances.xml
  def create
    @bowling_performance = BowlingPerformance.new(params[:bowling_performance])

    respond_to do |format|
      if @bowling_performance.save
        format.html { redirect_to(@bowling_performance, :notice => 'Bowling performance was successfully created.') }
        format.xml  { render :xml => @bowling_performance, :status => :created, :location => @bowling_performance }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bowling_performance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bowling_performances/1
  # PUT /bowling_performances/1.xml
  def update
    @bowling_performance = BowlingPerformance.find(params[:id])

    respond_to do |format|
      if @bowling_performance.update_attributes(params[:bowling_performance])
        format.html { redirect_to(@bowling_performance, :notice => 'Bowling performance was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bowling_performance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bowling_performances/1
  # DELETE /bowling_performances/1.xml
  def destroy
    @bowling_performance = BowlingPerformance.find(params[:id])
    @bowling_performance.destroy

    respond_to do |format|
      format.html { redirect_to(bowling_performances_url) }
      format.xml  { head :ok }
    end
  end
end
