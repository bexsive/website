class CreateWorkout < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|

      t.datetime :date
      t.string :name
      t.references :user, foreign_key: true
    end
  end
end
