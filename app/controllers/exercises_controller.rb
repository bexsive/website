class ExercisesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.new(exercise_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name)
  end
end
