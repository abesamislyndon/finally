class SubCategoryController < ApplicationController
   before_action :find_product,  only: [:show, :edit, :update, :destroy]


  def index
  end

   
  def new
  	  @sub = SubCategory.new  
      @cat = Category.includes(:sub_category)
   end

  def create
     @sub = SubCategory.create(subcat_params)
     redirect_to new_sub_category_path
  end

  def show
  	   @products = Product.where(:subCat_id => find_product)
     end

  private 

 	def find_product
 	   @id = SubCategory.friendly.find(params[:id])
 	end	

 	def subcat_params
 		params.require(:sub_category).permit(:sub_category_name, :category_id, :slug)
 	end

end
