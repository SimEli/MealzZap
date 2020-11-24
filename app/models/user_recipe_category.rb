class UserRecipeCategory < ApplicationRecord
  belongs_to :recipe
  belongs_to :user_category
end
