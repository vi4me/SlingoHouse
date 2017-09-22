module Api
  class ProductsController < ApplicationController

  	before_action :set_group

    def index
      @products = @group.products.page(params[:page]).per(params[:per])
    end

    def show
      @product = Product.find(params[:id])
  	end

  	def set_group
      @group = Group.find(params[:group_id])
    end
  end   
end