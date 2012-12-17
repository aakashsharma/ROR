class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
  # In your controllers

  protect_from_forgery
end
