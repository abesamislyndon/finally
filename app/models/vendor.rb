class Vendor < ActiveRecord::Base

    extend FriendlyId
    friendly_id :vendor_name, use: :slugged
    
	has_many :products
end
