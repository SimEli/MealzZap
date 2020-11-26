class DosesShoppingListsController < ApplicationController

  def destroy
    @doses_shopping_list = DosesShoppingList.find(params[:id])
    @doses_shopping_list.destroy
    redirect_to shopping_list_path(current_user.shopping_list)
  end
end
