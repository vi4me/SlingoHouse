class ImagesController < ApplicationController

  before_action :set_group
  before_action :set_product

  def new
    @image = @product.images.new
    @image = @group.images.new
  end

  def create
    @product.images.create(image_params)
    @group.images.create(image_params)
  end

  private

  def image_params
    params.require(:image).permit(:file)
  end

  def set_group
    @group = Group.find(params[:group_id])
  end

  def set_product
    @product = Product.find(params[:product_id])
  end
end
