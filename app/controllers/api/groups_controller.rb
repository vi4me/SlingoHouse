module Api
  class GroupsController < ApplicationController
  	
    def index
      @groups = Group.page(params[:page]).per(params[:per])
    end

    def show
    	@group = Group.find(params[:id])
  	end
  
  end
end