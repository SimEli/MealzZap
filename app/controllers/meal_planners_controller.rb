class MealPlannersController < ApplicationController
  def index
    @meal_planners = Meal_planner.all
  end

   def show
    @meal_planner = meal_planner.find(params[:id])
   end

  def new
    @meal_planner = Meal_planner.new
  end

  def create
    @meal_planner = Meal_planner.create(meal_planner_params)
    @meal_planner.user = current_user
    if @meal_planner.save!
      redirect_to meal_planner_path(@meal_planner)
    else
      render "meal_planners/new"
    end
  end

  def edit
  end

  def update
    if @meal_planner.update(meal_planner_params)
      redirect_to meal_planner_path(@meal_planner)
    else
      render "meal_planners/edit"
    end
  end

  private

  def meal_planner_params
    params.require(:meal_planner).permit(:name)
    # :public, :image
  end
end
