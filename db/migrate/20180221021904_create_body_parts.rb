class CreateBodyParts < ActiveRecord::Migration[5.1]
  def change
    create_table :body_parts do |t|
      t.string :name
      t.references :exercise, foreign_key: true
    end
  end
end
