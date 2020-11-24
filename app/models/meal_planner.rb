class MealPlanner < ApplicationRecord
  has_many :meal_planner_recipes, dependent: :destroy
  has_many :recipes, through: :meal_planner_recipes
end
