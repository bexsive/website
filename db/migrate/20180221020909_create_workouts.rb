class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.string :name
      t.datetime :date
      t.time :duration
      t.references :user, foreign_key: true
    end
  end
end
