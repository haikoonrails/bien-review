class UsersController < ApplicationController

  def new
    # a form for adding a new user
    @user = User.new
  end

end
