class CreateSetOfExercises < ActiveRecord::Migration
  def change
    create_table :set_of_exercises do |t|
      t.references :exercise, index: true, foreign_key: true
      t.integer :weight
      t.integer :reps

      t.timestamps null: false
    end
  end
end
