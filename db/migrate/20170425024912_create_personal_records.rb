class CreatePersonalRecords < ActiveRecord::Migration
  def change
    create_table :personal_records do |t|
      t.references :user, index: true, foreign_key: true
      t.references :exercise, index: true, foreign_key: true
      t.integer :sets
      t.integer :repititions
      t.float :one_rep_max

      t.timestamps null: false
    end
  end
end
