class VendorsController < ApplicationController
  before_action :vendor_list,  only: [:show, :edit, :update, :destroy]

  def dashboard
 	
  end
  def index
  	
  end

  def new
  	@vendor = Vendor.new
  end

  def create
  	@vendor = Vendor.create(params_vendor)
  	 if @vendor.save
        redirect_to  new_vendor_path
     end	
  end


  def show    	
     @vendor_products   = Product.where(:vendor_id => vendor_list)
  #  @vendor_products =  Vendor.includes(:product => {:vendor => {:event => {}}}).where(["events.id = ?", self.id])
  end

  private

  def vendor_list
  		 @id = Product.friendly.find(params[:id])
  end

  def params_vendor
  		params.require(:vendor).permit(:vendor_name, :slug)	
  end


end


