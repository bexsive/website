class RemoveExerciseIdfromMuscles < ActiveRecord::Migration[5.1]
  def change
    remove_column :muscles, :exercise_id
  end
end
