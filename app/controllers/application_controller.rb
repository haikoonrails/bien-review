class ApplicationController < ActionController::Base
  # before any action in any controller loads (new,update,create,destroy,...)
  #find the current_user
  before_action :find_current_user

  def find_current_user
    @current_user = User.find(session[:user_id])
  end
end
