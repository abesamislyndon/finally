class CategoryController < ApplicationController

  def index
  end
     
  def new
      @category = Category.new  
  end

  def create
     @category = Category.create(cat_params)
     if @category.save
        redirect_to   new_category_path
     end
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

   def cat_params
       params.require(:category).permit(:category_name, :slug)
   end

end
