class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def user_center
    @profile = current_user.profile
  end
end
