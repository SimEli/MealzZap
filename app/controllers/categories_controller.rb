class CategoriesController < ApplicationController
  def index
    @categories = Categories.all
  end

  def show
    @categories = Categories.new
  end
end
