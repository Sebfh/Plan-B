class PlansController < ApplicationController

  # GET /plans/new
  # GET /plans/new.xml
  def new
    @plan = Plan.new
    @plan.user = current_user
    @location = Location.new
    
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def create
    @plan = Plan.new(params[:plan])
    @plan.user = current_user
    @location = Location.new(params[:location])
  
    if @location.save
      @plan.location = @location
    end
  
    respond_to do |format|
      if @plan.save
        format.html { redirect_to root_path, :notice => 'Plan was successfully created.' }
      else
        format.html { render :action => "new" }
      end
    end
  end
  
  def show
    @plan = Plan.find(params[:id])
  end
  
  def edit
    @plan = Plan.find(params[:id])
    if @plan.location.nil?
      @location = Location.new
    else
      @location = @plan.location
    end
  end
  
  def update
    @plan = Plan.find(params[:id])
    respond_to do |format|
      if @plan.update_attributes(params[:plan])
        format.html { redirect_to plan_path(@plan), :notice => 'Plan was successfully updated.' }
      else
        format.html { render :action => "edit" }
      end
    end
  end
  
end
