# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#<ActiveRecord::Relation [
#<Product id: 1, name: "pens", price: 0.1e1, description: "Red, 12-pack", created_at: "2020-09-09 17:05:05", updated_at: "2020-09-18 18:54:49", brand: nil, supplier_id: 1>, 
#<Product id: 14, name: "Macbook Pro", price: 0.22e4, description: "15 inch screen", created_at: "2020-09-16 17:44:09", updated_at: "2020-09-18 19:00:30", brand: nil, supplier_id: 3>, 
#<Product id: 2, name: "Pencils", price: 0.2e1, description: "10-pack, number 2", created_at: "2020-09-09 17:14:59", updated_at: "2020-09-21 17:11:11", brand: nil, supplier_id: 1>, 
#<Product id: 5, name: "Multi-subject Notebook", price: 0.2e1, description: "Three subject, college-ruled", created_at: "2020-09-09 17:38:45", updated_at: "2020-09-21 17:13:04", brand: nil, supplier_id: 2>, 
#<Product id: 4, name: "Notebook", price: 0.1e1, description: "One subject, wide-ruled", created_at: "2020-09-09 17:35:50", updated_at: "2020-09-21 17:13:21", brand: nil, supplier_id: 2>]>

ProductCategory.create([
  {product_id: 1, category_id: 1},
  {product_id: 2, category_id: 1},
  {product_id: 4, category_id: 1},
  {product_id: 5, category_id: 1},
  {product_id: 14, category_id: 2}
])