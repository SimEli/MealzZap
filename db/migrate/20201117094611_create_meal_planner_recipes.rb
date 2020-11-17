class CreateMealPlannerRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_planner_recipes do |t|
      t.references :meal_planner, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
