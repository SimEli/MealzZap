class ShoppingList < ApplicationRecord
  belongs_to :user
  has_many :doses_shopping_lists
  has_many :doses, through: :doses_shopping_lists
end
