class MealPlannersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @meal_planners = MealPlanner.all
  end

  def show
    @meal_planner = MealPlanner.find(params[:id])
    @recipes = @meal_planner.recipes


  end
end
