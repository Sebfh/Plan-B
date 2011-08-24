class PlansController < ApplicationController
<<<<<<< HEAD
  # GET /plans/new
  # GET /plans/new.xml
  def new
    @plan = Plan.new
    @plan.user = current_user
    
    respond_to do |format|
      format.html # new.html.erb
    end
  end
=======

def new
  @plan = Plan.new
end

>>>>>>> 89637c6214c654c7b3b378cf262a5c2e67ce8832
end
