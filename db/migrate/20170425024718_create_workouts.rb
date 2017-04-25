class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.references :sets_of_exercises, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.datetime :date

      t.timestamps null: false
    end
  end
end
