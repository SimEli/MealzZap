class MealPlannerRecipe < ApplicationRecord
  belongs_to :meal_planner
  belongs_to :recipe
end
