Rails.application.routes.draw do
  namespace :api do
    get "/all_products" => "products#all_products"
    get "/a_product" => "products#one_product"
  end
end
