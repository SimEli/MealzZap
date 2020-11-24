class Recipe < ApplicationRecord
  belongs_to :user
  has_many :doses
  has_many :ingredients, through: :doses # recipe.ingredient instead of recipe.dose.ingredient
  has_many :reviews, dependent: :destroy
  has_many :recipe_categories
  has_many :categories, through: :recipe_categories
  has_many :recipe_tags
  has_many :tags, through: :recipe_tags
  has_one_attached :image
  #has_many :meal_planners, through: :meal_planner_recipes
end
