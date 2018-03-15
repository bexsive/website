class LiftsController < ApplicationController

  def create
    @workout = Workout.find(params[:workout_id])
    @lift = @workout.lifts.create(set_params)
    redirect_to @workout
    flash[:success] = "New Set Created"
  end

  private

    def set_params
      params.require(:lift).permit(:exercise, :reps, :weight, :duration)
    end

end
