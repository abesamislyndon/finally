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
  	# @product  = Product.friendly.find(params[:id])
      @products = Product.where(:subCat_id => find_product)
  end

  private

    def find_product
     @id = Category.friendly.find(params[:id])
  end 

   def cat_params
       params.require(:category).permit(:category_name, :slug)
   end

end
