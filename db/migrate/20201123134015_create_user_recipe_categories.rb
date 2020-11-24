class CreateUserRecipeCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :user_recipe_categories do |t|
      t.references :recipe, null: false, foreign_key: true
      t.references :user_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
