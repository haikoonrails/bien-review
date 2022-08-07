class ApplicationController < ActionController::Base
  # before any action in any controller loads (new,update,create,destroy,...)
  #find the current_user
  before_action :find_current_user

  def find_current_user
    if session[:user_id].present?
      @current_user = User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  # check login status
  def check_login
    if session[:user_id].present?

    else
      redirect_to new_session_path
    end
    
  end
end
