class DosesShoppingList < ApplicationRecord
  belongs_to :shopping_list
  belongs_to :dose
  has_many :ingredients, through: :doses
end
