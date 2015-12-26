class Product < ActiveRecord::Base
	extend FriendlyId
    friendly_id :product_name, use: :slugged
	belongs_to :vendors	
	has_many  :sub_categories
	#has_many  :photos

end
