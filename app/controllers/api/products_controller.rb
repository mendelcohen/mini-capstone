class Api::ProductsController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  # def index
  #   @products = Product.all

  #   if params[:search]
  #     @products = @products.where("name iLIKE ?", "%#{params[:search]}%")
  #   end

  #   if params[:sort] == "price"
  #     if params[:sort_order] == "desc"
  #       @products = @products.order(price: :desc)
  #     end
  #     @products = @products.order(:price)
  #   else
  #     @products = @products.order(:id)
  #   end

  #   render "index.json.jb"
  # end

  def index
    @products = Product
      .title_search(params[:search])
      .discounted(params[:discount])
      .sorted(params[:sort], params[:sort_order])
    render "index.json.jb"
  end
  
  def show
    @product = Product.find_by(id: params["id"])
    render "show.json.jb"
  end

  def create
    @product = Product.new(name: params[:name], 
      price: params[:price], 
      description: params[:description],
      supplier_id: params[:supplier_id])
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.supplier_id = params[:supplier_id] || @product.supplier_id
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy
    render json: {message: "PRODUCT DELETED"}
  end

end
