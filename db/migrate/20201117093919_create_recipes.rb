class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.string :cooking_time
      t.string :preparation_time
      t.integer :serves
      t.boolean :public

      t.timestamps
    end
  end
end
