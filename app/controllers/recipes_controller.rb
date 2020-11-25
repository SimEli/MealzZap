class RecipesController < ApplicationController
  before_action :recipe_find, only: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @recipes = Recipe.all
  end

  #def my_index
   # @recipes = current_user.recipes
    #render :index
  #end

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

  def add_shopping_list
    current_user.shopping_lists.last.doses << @recipe.doses
    redirect_to recipe_path(@recipe)
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :preparation_time, :cooking_time, :serves, :image)
    # :public :tags, 
  end

  def recipe_find
    @recipe = Recipe.find(params[:id])
  end
end
