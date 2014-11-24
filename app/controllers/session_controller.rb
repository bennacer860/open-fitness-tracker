class SessionController < ApplicationController
  def create
    auth = request.env['omniauth.auth']
    #User.create_with_omniauth(auth)
    unless @user = User.find_from_omniauth(auth)
      @user = User.create_from_omniauth(auth)
    end 
    #session[:name] = @user.name
    session[:id] = @user.id
    redirect_to root_url, notice: "Signed In!"
  end

  def destroy
    session[:id] = nil
    redirect_to root_url, notice: "Signed Out!"
  end
end
