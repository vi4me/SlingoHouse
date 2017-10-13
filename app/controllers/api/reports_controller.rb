module Api
  class ReportsController < ApplicationController
  	
    def index
      @reports = Report.page(params[:page]).per(params[:per])
    end

    def show
      @report = Report.find(params[:id])
  	end
  
  end
end