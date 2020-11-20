class UserRecipesController < ApplicationController

def index
    @recipe = Recipe.all
  end

  def my_index
    @recipes = current_user.recipes
    render :index
  end

  def show
    @recipe = Recipe.find(params[:id])
  end


end
