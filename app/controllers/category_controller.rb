class CategoryController < ApplicationController



  def index
  end

  def show
  	 @product  = Product.find(params[:id])
  end

   private

   def find_sub_id
   	   if params[:subCat_id]
   	   	     params[:subCat_id]
   	   end
   end

end
