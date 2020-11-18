class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

   def show
    @category = Category.find(params[:id])
   end

  def new
    @categories = Category.new
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
    params.require(:category).permit(:name)
    # :public, :image

  end

  def category_find
    @category = Category.find(params[:id])
  end

end

