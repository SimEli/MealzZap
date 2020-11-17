class DosesController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @dose = Dose.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @review = Review.new
    @dose = Dose.new(dose_params)
    @dose.recipe = @recipe
    if @dose.save
      redirect_to recipe_path(@recipe)
    else
      render 'recipes/show'
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to recipe_path(@dose.recipe)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
