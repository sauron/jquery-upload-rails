class ProductsController < ApplicationController
  before_filter :find_product, :only => [:edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
    @product.product_pictures.build
  end

  def create
    @product = Product.new(params[:product])
  end

  def edit
  end

  def update
    @product.update_attributes(params[:product])
  end

  def destroy
  end

  protected
  def find_product
    @product = Product.find(params[:id])
  end
end
