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
end
