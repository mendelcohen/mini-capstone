Rails.application.routes.draw do
  namespace :api do
    get "/all_products" => "products#each_product"
    get "/a_product" => "products#product_one"
    get "/b_product" => "products#product_two"
    get "/c_product" => "products#product_three"
  end
end
