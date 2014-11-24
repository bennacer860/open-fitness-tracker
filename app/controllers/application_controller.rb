class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    session[:id].nil? ? @current = nil : @current_user ||= User.where(id: session[:id]) 
  end

  helper_method :current_user
end
