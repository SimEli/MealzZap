class AddCategoryToMealPlanner < ActiveRecord::Migration[6.0]
  def change
    add_column :meal_planners, :category, :string
  end
end
