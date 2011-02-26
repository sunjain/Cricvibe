class DismissalsController < ApplicationController
  # GET /dismissals
  # GET /dismissals.xml
  def index
    @dismissals = Dismissal.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dismissals }
    end
  end

  # GET /dismissals/1
  # GET /dismissals/1.xml
  def show
    @dismissal = Dismissal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dismissal }
    end
  end

  # GET /dismissals/new
  # GET /dismissals/new.xml
  def new
    @dismissal = Dismissal.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dismissal }
    end
  end

  # GET /dismissals/1/edit
  def edit
    @dismissal = Dismissal.find(params[:id])
  end

  # POST /dismissals
  # POST /dismissals.xml
  def create
    @dismissal = Dismissal.new(params[:dismissal])

    respond_to do |format|
      if @dismissal.save
        format.html { redirect_to(@dismissal, :notice => 'Dismissal was successfully created.') }
        format.xml  { render :xml => @dismissal, :status => :created, :location => @dismissal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dismissal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dismissals/1
  # PUT /dismissals/1.xml
  def update
    @dismissal = Dismissal.find(params[:id])

    respond_to do |format|
      if @dismissal.update_attributes(params[:dismissal])
        format.html { redirect_to(@dismissal, :notice => 'Dismissal was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dismissal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dismissals/1
  # DELETE /dismissals/1.xml
  def destroy
    @dismissal = Dismissal.find(params[:id])
    @dismissal.destroy

    respond_to do |format|
      format.html { redirect_to(dismissals_url) }
      format.xml  { head :ok }
    end
  end
end
