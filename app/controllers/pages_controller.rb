
class PagesController < ApplicationController

	def home
		if current_user.try(:admin?)
		    @products = Product.all
			render  'pages/products'
		else
			@listing = Category.includes(:sub_category)
		end
	end

	def show
	end

end