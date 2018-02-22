class CreateSet < ActiveRecord::Migration[5.1]
  def change
    create_table :sets do |t|

      t.references :workout, foreign_key: true
      t.references :exercise, foreign_key: true
      t.integer :reps
      t.integer :weight
      t.time :duration
    end
  end
end
