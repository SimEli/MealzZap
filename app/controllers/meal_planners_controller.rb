class MealPlannersController < ApplicationController
  def index
    @meal_planners = Meal_planner.all
  end
end
