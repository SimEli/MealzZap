class UserMealPlanner < ApplicationRecord
  belongs_to :user
  belongs_to :meal_planner
  has_many :meal_planner_recipes, through: :meal_planner
end
