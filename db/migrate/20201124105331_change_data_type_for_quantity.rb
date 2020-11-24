class ChangeDataTypeForQuantity < ActiveRecord::Migration[6.0]
  def change
    change_column :doses, :quantity, :string
  end
end
