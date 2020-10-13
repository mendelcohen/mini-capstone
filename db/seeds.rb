Image.create!([
  {url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.laptopmag.com%2Freviews%2Flaptops%2F2019-macbook-pro-15-inch&psig=AOvVaw2EOuO26VCXeHVJk_8fGJYn&ust=1601096359245000&source=images&cd=vfe&ved=2ahUKEwiItZzvwoPsAhUFhHIEHTRZBLQQjRx6BAgAEAc", product_id: 14}
])
Category.create!([
  {name: "Basic Supplies"},
  {name: "Technology"},
  {name: "Furniture"},
  {name: "General"}
])
Supplier.create!([
  {name: "Staples", email: "staples@staples.com", phone_number: "444-555-6666"},
  {name: "Walmart", email: "wlamart@walmart.com", phone_number: "111-222-3333"},
  {name: "Amazon", email: "amazon@amazon.com", phone_number: "666-777-8888"}
])
CartedProduct.create!([
  {user_id: 2, product_id: 2, quantity: 3, status: "purchased", order_id: 3},
  {user_id: 1, product_id: 1, quantity: 1, status: "purchased", order_id: 17},
  {user_id: 1, product_id: 14, quantity: 2, status: "purchased", order_id: 17},
  {user_id: 1, product_id: 4, quantity: 2, status: "purchased", order_id: 17}
])
Product.create!([
  {name: "Pencils", price: "2.0", description: "10-pack, number 2", brand: nil, supplier_id: 1},
  {name: "Notebook", price: "1.0", description: "One subject, wide-ruled", brand: nil, supplier_id: 2},
  {name: "Multi-subject Notebook", price: "2.0", description: "Three subject, college-ruled", brand: nil, supplier_id: 2},
  {name: "Macbook Pro", price: "2200.0", description: "15 inch screen", brand: nil, supplier_id: 3},
  {name: "Computer Desk", price: "200.0", description: "Cherry wood", brand: "Mulhall", supplier_id: 2},
  {name: "Pens", price: "1.0", description: "Red, 12-pack", brand: "Bic", supplier_id: 1}
])
Order.create!([
  {user_id: 1, subtotal: "2.0", tax: "0.18", total: "2.18"},
  {user_id: 1, subtotal: "2200.0", tax: "198.0", total: "2398.0"},
  {user_id: 1, subtotal: "4403.0", tax: "396.27", total: "4799.27"}
])
ProductCategory.create!([
  {product_id: 1, category_id: 1},
  {product_id: 2, category_id: 1},
  {product_id: 4, category_id: 1},
  {product_id: 5, category_id: 1},
  {product_id: 14, category_id: 2}
])
User.create!([
  {name: "Mendy", email: "mendy@gmail.com", password_digest: "$2a$12$QUd27bs5mKvJpP3NGmn09u3BUnlL6dLKDvaPqlma3JlskLsdDj7Ya", admin: nil},
  {name: "Mendel", email: "mendel@gmail.com", password_digest: "$2a$12$VvuqORbk6K6BWwIoSDEet./EMlUnjK/MtT4fu3Tl7ZLz/RoEOPOpu", admin: nil}
])
