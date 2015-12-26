class Category < ActiveRecord::Base
	extend FriendlyId
    friendly_id :category_name, use: :slugged
	has_many :sub_categories
end
