class RemoveColumnToRecipes < ActiveRecord::Migration[6.0]
  def change
    remove_column :recipes, :steps, :text
  end
end
