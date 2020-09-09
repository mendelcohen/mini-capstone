class Api::ProductsController < ApplicationController
  def all_products
    @all_products = Product.all
    render "products.json.jb" 
  end

  def one_product
    @one_product = Product.first
    render "one_product.json.jb" 
  end
end
