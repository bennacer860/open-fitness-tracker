class SessionController < ApplicationController
  def create
    auth = request.env['omniauth.auth']
    #User.create_with_omniauth(auth)
    unless @user = User.find_from_omniauth(auth)
      @user = User.create_from_omniauth(auth)
    end 
    #session[:name] = @user.name
    session[:id] = @user.id

  end

  def destroy
    session[:id] = nil
    @current = nil
    redirect_to root_url, notice: "Signed out"
  end
end
