class CreateMuscle < ActiveRecord::Migration[5.1]
  def change
    create_table :muscles do |t|
      t.string :name
      t.references :exercise, foreign_key: true
    end
  end
end
