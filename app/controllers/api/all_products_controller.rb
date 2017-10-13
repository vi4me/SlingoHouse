module Api
  class AllProductsController < ApplicationController

    def index
      @products = Product.page(params[:page]).per(params[:per]).order('created_at DESC')
    end

    def show
      @product = Product.find(params[:id])
  	end
  end   
end