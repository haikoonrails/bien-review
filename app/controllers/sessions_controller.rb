class SessionsController < ApplicationController

  def new
    # login form
  end

  def create
    # try log in
    @form_data = params.require(:session)

    @username = @form_data[:username]
    @password = @form_data[:password]

    @user = User.find_by(username: @username).try(:authenticate, @password)

    #if the user present -> redirect to the home page.
    if @user
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render "new"
    end

  end

  def destroy
    # try log out
    # remove session completely
    reset_session

    # return to the log in page
    redirect_to new_session_path
  end
end
