class UserController < ApplicationController
  def index
    @users = User.all
    authorize @users
  end
end
