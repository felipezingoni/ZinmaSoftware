class UsersController < ApplicationController

  def index
    @users = User.includes(avatar_attachment: :blob).all
  end

  private
  def user_params
    params.require(:user).permit(:email, :name, :last_name, :admin, :avatar)
  end
end
