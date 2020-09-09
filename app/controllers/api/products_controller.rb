class Api::ProductsController < ApplicationController
  def all_products
    @all_products = Product.all
    render "products.json.jb" 
  end
end
