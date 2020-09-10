class Api::ProductsController < ApplicationController
  def each_product
    @each_product = Product.all
    render "products.json.jb" 
  end

  def product_one
    @one_product = Product.first
    render "any_product.json.jb" 
  end

  def product_two
    @one_product = Product.second
    render "any_product.json.jb" 
  end

  def product_three
    @one_product = Product.three
    render "any_product.json.jb" 
  end

end
