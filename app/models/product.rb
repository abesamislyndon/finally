class Product < ActiveRecord::Base
	belongs_to :vendor
	has_many :product
end
