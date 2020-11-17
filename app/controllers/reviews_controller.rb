class ReviewsController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @review = Review.new(review_params)
    @review.recipe = @recipe
    if @review.save
      redirect_to recipe_path(@recipe)
    else
      render 'recipes/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:text, :rating)
  end
end
