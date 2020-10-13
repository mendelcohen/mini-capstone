class Api::CartedProductsController < ApplicationController

  before_action :authenticate_user

  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    render "index.json.jb"
  end
  
  def create
    @carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id
    )
    if @carted_product.save
      render show "show.json.jb"
    else
      render json: {error: @carted_product.errors.full_messages}, status: :unprocessable_entity
    end

    def destroy
      carted_product = current_user.carted_product.find(params[:id])
      carted_product.status = removed
      carted_product.save
      render json: { status: "Carted product removed!" }
    end

  end

end
