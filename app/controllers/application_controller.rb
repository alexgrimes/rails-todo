class ApplicationController < ActionController::API
  skip_before_action :verify_authenticity_token, raise: false
  # protect_from_forgery with: :exception
  
end
