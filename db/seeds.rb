
Category.create!([
  {category_name: "Motorocycle - Parts & Accesories"},
  {category_name: "Auto - Parts & Accesories"},
  {category_name: "Truck - Parts & Accesories"},
  {category_name: "Bus - Parts & Accesories"}
])
Product.create!([
  {product_name: "Side Mirror", user_id: 1, vendor_id: 1, category_id: 1},
  {product_name: "rims", user_id: 1, vendor_id: 1, category_id: 1},
  {product_name: "wind sheild", user_id: 1, vendor_id: 1, category_id: 1}
])
SubCategory.create!([
  {sub_category_name: "Interior Accesories", category_id: 1},
  {sub_category_name: "Exterior Accesories", category_id: 1}
])
Vendor.create!([
  {vendor_name: "Full Throtle"}
])
