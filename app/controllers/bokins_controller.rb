class BokinsController < ApplicationController
 
  # GET /bokins/1
  # GET /bokins/1.json
  def show
    @bokin = Bokin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @bokin }
    end
  end

  # GET /bokins/new
  # GET /bokins/new.json
  def new
    @bokin = Bokin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @bokin }
    end
  end

  # POST /bokins
  # POST /bokins.json
  def create
    @bokin = Bokin.new(params[:bokin])
    
    @bokin.name = current_user.name
    @bokin.photourl = current_user.screen_name
    
    
    respond_to do |format|
      if @bokin.save
        format.html { redirect_to @bokin, :notice => 'Bokin was successfully created.' }
        format.json { render :json => @bokin, :status => :created, :location => @bokin }
      else
        format.html { render :action => "new" }
        format.json { render :json => @bokin.errors, :status => :unprocessable_entity }
      end
    end
  end
  
end
