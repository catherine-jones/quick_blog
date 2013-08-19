class ApplicationController < ActionController::Base
  protect_from_forgery
	
  def authenticate
    authenticate_or_request_with_http_basic do |name, password|
      name =="admin" && password == "secret"
    end
  end
end
