class SubCategory < ActiveRecord::Base
   
   extend FriendlyId
   friendly_id :sub_category_name, use: :slugged

   belongs_to :categories
   has_many :products

 
end
