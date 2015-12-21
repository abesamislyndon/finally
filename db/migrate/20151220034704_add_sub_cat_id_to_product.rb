class AddSubCatIdToProduct < ActiveRecord::Migration
  def change
    add_column :products, :subCat_id, :int
  end
end
