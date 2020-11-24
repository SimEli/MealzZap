class UserCategoriesController < ApplicationController
  def index
    @category = Category.all
  end

  def my_index
    @categories = current_user.categories
    render :index
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @user_category = Category.new
  end

  def create
    @category = Category.create(category_params)
    @category.user = current_user
    if @category.save!
      redirect_to category_path(@category)
    else
      render "categories/new"
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to category_path(@category)
    else
      render "categories/edit"
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :image)
    # :public
  end

  def category_find
    @category = Recipe.find(params[:id])
  end
end
