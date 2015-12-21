class ProductsController < ApplicationController
   before_action  only: [:show, :edit, :update, :destroy]
	
  def index
 #   @products = Category.all
   end

  def new
      @product = Product.new
  end

  def show      
      @product  = Product.find(params[:id])
  end

  private

  def product_params
      params.require(:product).permit(:product_name, :id)
  end

  def  check_role
  authenticate_user!

  if current_user.admin
     return
  else
     redirect_to root_url # or whatever
  end
end

end
