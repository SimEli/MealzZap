class CreateDosesShoppingLists < ActiveRecord::Migration[6.0]
  def change
    create_table :doses_shopping_lists do |t|
      t.references :shopping_list, null: false, foreign_key: true
      t.references :dose, null: false, foreign_key: true

      t.timestamps
    end
  end
end
