class SessionController < ApplicationController
  def create
    auth = request.env['omniauth.auth']
    User.create_with_omniauth(auth)
  end

  def destroy
  end
end
