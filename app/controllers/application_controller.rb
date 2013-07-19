class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  include UrlHelper
  helper :all
  helper_method :current_user
  # Force signout to prevent CSRF attacks
  def handle_unverified_request
    sign_out
    super
  end
  
  def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end
  

end
