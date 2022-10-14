class UsersController < ApplicationController
  def index
    @users = User.includes(avatar_attachment: :blob).all
  end
end
