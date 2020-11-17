class DosesShoppingList < ApplicationRecord
  belongs_to :shopping_list
  belongs_to :dose
end
