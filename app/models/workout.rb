class Workout < ActiveRecord::Base
  belongs_to :sets_of_exercises
  belongs_to :user
end
