class MealPlannersController < ApplicationController
  def index
    @meal_planners = MealPlanner.all
  end

  def show
    @meal_planner = MealPlanner.find(params[:id])
    @recipes = @meal_planner.recipes
    @user = current_user
  end

  def new
    @meal_planner = MealPlanner.new
  end


end
