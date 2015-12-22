class Product < ActiveRecord::Base
	 has_permalink :heading
	belongs_to :category
	has_many  :sub_category
	has_many :products
end
