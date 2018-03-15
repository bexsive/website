class WorkoutsController < ApplicationController
  #TODO Before action, check for user/signed in
  def index
    @user = User.find(params[:user_id])
    @workouts = @user.workouts.all
  end

  def show
    @workout = Workout.find(params[:id])
    @lifts = @workout.lifts
#    @lift = @workout.sets.first
  end

  def new
    @user = User.find(params[:user_id])
    @workout = @user.workouts.build
  end

  def create
    @user = User.find(params[:user_id])
    @workout = @user.workouts.create(workout_params)
    flash[:success] = "New workout created successfully"
    redirect_to user_path(@user)
  end

  def edit
    @user = User.find(params[:user_id])
    @workout = @user.workouts.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @workout = @user.workouts.find(params[:id])
    if @workout.update(workout_params)
      flash[:success] = "Workout was updated successfully!"
      redirect_to user_path(@user)
    else
      flash[:danger] = "#{@workout.errors}"
      redirect_to 'edit'
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @workout = @user.workouts.find(params[:id]).destroy
    flash[:success] = "Workout deleted successfully"
    redirect_to user_path(@user)
  end

  private

  def workout_params
    params.require(:workout).permit(:date, :name, :user_id)
  end
end
