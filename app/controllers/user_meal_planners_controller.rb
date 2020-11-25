class UserMealPlannersController < ApplicationController

  def index
    @user_meal_planners = UserMealPlanner.all
  end

  def show
    @user_meal_planner = UserMealPlanner.find(params[:id])
  end

  def new
    @user_meal_planner = UserMealPlanner.new

  end

  def create
    @meal_planner = MealPlanner.find(params[:meal_planner_id])

    if current_user.user_meal_planners.create(meal_planner: @meal_planner)

      redirect_to user_meal_planners_path
    else
      render "user_meal_planners/new"
    end
  end

  def edit
  end

  def update
    if @user_meal_planner.update(user_meal_planner_params)
      redirect_to user_meal_planner_path(@user_meal_planner)
    else
      render "user_meal_planners/edit"
    end
  end

  #def add_plan(meal_planner_recipe)

  #end

  private

  def user_meal_planner_params
    params.require(:meal_planner).permit(:serves)
    # :public
  end

  def recipe_find
    @recipe = Recipe.find(params[:id])
  end
end
