class PagesController < ApplicationController
	def products
		@products = Product.all
	end
end
