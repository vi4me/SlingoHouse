module Api
  class ImagesController < ApplicationController
  	
    def index
      @image = @product.images
    	@image = @group.images
    end

    def show
    	@image = @product.images
    	@image = @group.images
  	end
  
  end
end