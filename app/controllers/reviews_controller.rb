class ReviewsController < ApplicationController
    def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.recipe = recipe
    if @review.save
      redirect_to recipe_path(@review.recipe)
    else
      render "recipes/new"
    end

  end

  private

  def review_params
    params.require(:review).permit(:text, :rating)
  end

  def recipe
    recipe_id = params[:recipe_id]
    Recipe.find(recipe_id)
  end
end

