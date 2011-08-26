class SessionsController < ApplicationController
  def create
    # om te kijken wat er in de file zit
    # raise request.env["omniauth.auth"].to_yaml
    
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Welcome!"
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Goodbye!"
  end
end
