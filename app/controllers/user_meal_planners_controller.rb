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
    @user_meal_planner = UserMealPlanner.create(user_meal_planner_params)
    @user_meal_planner.user = current_user
    if @user_meal_planner.save!
      redirect_to user_meal_planner_path(@user_meal_planner)
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

  private

  def user_meal_planner_params
    params.require(:user_meal_planner).permit(:serves)
    # :public
  end

  def recipe_find
    @recipe = Recipe.find(params[:id])
  end
end
