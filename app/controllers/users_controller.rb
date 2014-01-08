class UsersController < ApplicationController
  def create
    u = User.create(user_params)
    redirect_to user_path(u)
  end

  private

  def user_params
    params.permit(:username, :email)
  end
end
