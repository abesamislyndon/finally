class AddDescriptionToProducts < ActiveRecord::Migration
  def change
    add_column :products, :description, :string , :maximum => 255
  end
end
