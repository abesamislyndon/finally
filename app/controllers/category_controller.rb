class CategoryController < ApplicationController
  def index
  	@listing = Category.includes(:sub_category)
  end
end
