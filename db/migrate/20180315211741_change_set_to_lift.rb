class ChangeSetToLift < ActiveRecord::Migration[5.1]
  def change
    rename_table :sets, :lifts 
  end
end
