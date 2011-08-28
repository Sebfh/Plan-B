class ReactionsController < ApplicationController
  def new
    
    # raise params['a']
    
    if params['a']
      @reaction = Reaction.new
      @plan = Plan.find(params[:plan_id])
      @reaction.user = current_user
      @reaction.plan = @plan
      
      @reaction.message = ''
      
      if params['a'] == 'yes'
           #reactie toevoegen met een yes
           @reaction.attending = true
      else
          #reactie toevoegen met een no
          @reaction.attending = false
      end
      respond_to do |format|
        if @reaction.save
          format.html { redirect_to plan_path(@plan), :notice => 'Thanks for sharing!' }
        else
          format.html { redirect_to plan_path(@plan), :notice => 'Oops, something went wrong.' }
        end
      end
    end
  end
end
