class CreateMealPlanners < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_planners do |t|
      t.string :name

      t.timestamps
    end
  end
end
