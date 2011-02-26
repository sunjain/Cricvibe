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
end
