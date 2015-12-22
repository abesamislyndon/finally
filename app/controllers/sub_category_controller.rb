class SubCategoryController < ApplicationController
 
  before_action :find_product
  
  def index
   	 @products = Product.where(:subCat_id => @product.id).all
  end

  def show
  end

  private 

 	def find_product
 		if params[:id]
 			@product = Product.find(params[:id])
 		end
 	end	

end
