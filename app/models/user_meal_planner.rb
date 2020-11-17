class UserMealPlanner < ApplicationRecord
  belongs_to :user
  belongs_to :meal_planner
end
