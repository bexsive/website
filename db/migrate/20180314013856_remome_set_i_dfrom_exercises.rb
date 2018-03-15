class RemomeSetIDfromExercises < ActiveRecord::Migration[5.1]
  def change
    remove_column :exercises, :set_id
    remove_column :exercises, :muscle_id
  end
end
