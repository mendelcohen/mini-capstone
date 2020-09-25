class Api::OrdersController < ApplicationController
  
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render "index.json.jb"
  end

  def create
    @order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity]
    )
    @order.subtotal = @order.quantity * @order.product.price
    @order.tax = @order.subtotal * 0.09
    @order.total = @order.tax + @order.subtotal
    if @order.save
      render "show.json.jb"
    else
      render json: { errors: @order.errors.full_messages}, status: unprocessable_entity
    end
  end

  def show
    @order = current_user.order.find(params[:id])
    render "show.json.jb"
  end
end
