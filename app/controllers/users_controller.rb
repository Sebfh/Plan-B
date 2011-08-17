class UsersController < ApplicationController
  def new
    @User = User.new
  end
  def dashboard
    # alle plannen van de current_user ophalen en klaarzetten voor de view
    @plans = Plan.where(:user_id => current_user)
  end
end
