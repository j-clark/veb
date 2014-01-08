class UsersController < ApplicationController
  def create
    render nothing: true
    User.create(user_params)
  end

  private

  def user_params
    params.permit(:username, :email)
  end
end
