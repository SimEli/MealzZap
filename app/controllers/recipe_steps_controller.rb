class RecipeStepsController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @step = Step.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @step = RecipeStep.new(step_params)
    @step.recipe = @recipe
    if @step.save
      redirect_to recipe_path(@recipe)
    else
      render 'recipes/show'
    end
  end

  def destroy
    @step = Step.find(params[:id])
    @step.destroy
    redirect_to recipe_path(@step.recipe)
  end

  private

  def step_params
    params.require(:recipe_step).permit(:recipe_id, :step)
  end
end
