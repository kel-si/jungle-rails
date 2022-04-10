class Admin::CategoriesController < ApplicationController
  def index
    @categories = Category.name
  end

  def new
    @categories = Category.new
  end

  def create
  end

  def category_params
    params.require(:category).permit(
      :name,
      :created_at,
      :updated_at
    )
  end
end
