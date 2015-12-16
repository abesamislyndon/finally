class PagesController < ApplicationController

	def home
	end

	def products
		@products = Product.all
	end
end
