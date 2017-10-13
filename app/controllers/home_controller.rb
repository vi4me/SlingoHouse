class HomeController < ApplicationController
	
  def index
  	 @reports = Report.all
  	 @products = Product.where({'favorit' => true})
  end

  def show
    @report = Report.find(params[:id])
    @product = Product.find(params[:id])
  end
end
