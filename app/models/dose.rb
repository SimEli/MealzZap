class Dose < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient
  has_many :doses_shopping_lists
  has_many :shopping_lists, through: :doses_shopping_lists
end
