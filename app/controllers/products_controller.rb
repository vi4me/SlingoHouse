class ProductsController < ApplicationController

  before_action :set_group

  def index
    @products = @group.products
    @q = Product.ransack(params[:q])
    @products = @q.result.order('created_at DESC')
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
  end

  def edit
     @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params) 
  end

  def destroy
    @product = Product.find(params[:product_id])
    @product = @group.products.find(params[:id])
    @product.destroy
  end
 
  private

    def set_group
      @group = Group.find(params[:group_id])
    end

    def product_params
      params.require(:product).permit(:price, :name, :pr_description, :favorit, images_attributes: [:id, :file, :_destroy])
    end
end

 