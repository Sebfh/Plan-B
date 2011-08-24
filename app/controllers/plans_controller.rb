class PlansController < ApplicationController

  # GET /plans/new
  # GET /plans/new.xml
  def new
    @plan = Plan.new
    @plan.user = current_user
    
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def create
    @plan = Plan.new(params[:plan])
    @plan.user = current_user
    
    respond_to do |format|
      if @plan.save
        format.html { redirect_to root_path, :notice => 'Plan was successfully created.' }
      else
        format.html { render :action => "new" }
      end
    end
  end
  
  
end
