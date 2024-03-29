class SessionController < ApplicationController
  def callback
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"],auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_url, :notice => "LOGGED IN"
  end

  def destroy
    #@gig = User.find(current_user.id)
    #@gig.destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "LOGOUT"
  end

end
