class RecipesController < ApplicationController
  before_action :recipe_find, only: [:show, :edit, :update]
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    @recipe.user = current_user
    if @recipe.save!
      redirect_to recipe_path(@recipe)
    else
      render "recipes/new"
    end
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to recipe_path(@recipe)
    else
      render "recipes/edit"
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :preparation_time, :cooking_time, :serves)
    # :public, :image

  end

  def recipe_find
    @recipe = Recipe.find(params[:id])
  end
end
