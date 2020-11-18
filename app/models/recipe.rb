class Recipe < ApplicationRecord
  belongs_to :user, optional: true
  has_many :ingredients, through: :doses #recipe.ingredient instead of recipe.dose.ingredient
  has_many :reviews, dependent: :destroy
  # has_one_attached :photo
end
