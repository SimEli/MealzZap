class ShoppingListsController < ApplicationController

  def index
    @user = current_user
    @shopping_lists = current_user.shopping_lists.first

  end

  def show
    @user = current_user
    @shopping_list = ShoppingList.find(params[:id])
    @doses = @shopping_list.doses
  end
end
