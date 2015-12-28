class Product < ActiveRecord::Base
	extend FriendlyId
    friendly_id :product_name, use: :slugged
	belongs_to :vendor	
	has_many  :sub_category
	#has_many  :photos

end
