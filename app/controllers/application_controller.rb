class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authenticate_user!
    redirect_to '/employee_login' unless current_user
  end

  # def restrict_api_access
  #   authenticate_or_request_with_http_token do |api_key, options|
  #     false
  #   end

  # end
  
end
