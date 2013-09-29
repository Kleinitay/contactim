class ApplicationController < ActionController::Base
  protect_from_forgery
  def after_sign_in_path_for(resource)
  if session[:return_to].nil?
    sheets_path
  else
    session[:return_to]
  end
end
end
