class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  # def show

  def new
    @categories = Category.new
  end
end
