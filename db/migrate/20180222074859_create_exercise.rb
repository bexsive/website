class CreateExercise < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.references :set, foreign_key: true
      t.references :muscle, foreign_key: true
    end
  end
end
