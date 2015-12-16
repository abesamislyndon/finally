class ProductsController < ApplicationController
	
  def show
    @product = Product.all
  end

	def new
		@products = current_user.rooms.build	
	end
end
