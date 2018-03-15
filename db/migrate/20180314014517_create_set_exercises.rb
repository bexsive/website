class CreateSetExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :set_exercises do |t|
      t.integer :set_id
      t.integer :exercise_id
    end
  end
end
