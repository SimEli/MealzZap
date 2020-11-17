class CreateUserMealPlanners < ActiveRecord::Migration[6.0]
  def change
    create_table :user_meal_planners do |t|
      t.references :user, null: false, foreign_key: true
      t.references :meal_planner, null: false, foreign_key: true
      t.integer :serves

      t.timestamps
    end
  end
end
