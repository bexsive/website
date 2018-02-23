class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @workouts = @user.workouts.all
  end

  def edit
    @user = User.find(params[:user_id])
    @workouts = @user.workouts.find(params[:id])
  end

end
