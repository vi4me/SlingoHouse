class AllProductsController < ApplicationController

  def index
    @q = Product.ransack(params[:q])
    @products = @q.result.order('created_at DESC')
  end

  def show
    @product = Product.find(params[:id])
  end
end
