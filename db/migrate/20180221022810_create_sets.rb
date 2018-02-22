class CreateSets < ActiveRecord::Migration[5.1]
  def change
    create_table :sets do |t|
      t.integer :reps
      t.time :duration
      t.references :exercise, foreign_key: true
    end
  end
end
