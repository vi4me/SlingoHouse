class ReportsController < ApplicationController

  def index
  	 @reports = Report.all
  end

  def show
    @report = Report.find(params[:id])
  end

  def new
    @report = Report.new
  end

  def edit
    @report = Report.find(params[:id])
  end
 
  def create
    @report = Report.create(report_params)
  end

  def update
    @report = Report.find(params[:id])
    @report = @instruction.update(report_params)
  end

  def destroy
    @report = Report.find(params[:id])
    @report.destroy
  end

 private
  def report_params
    params.require(:report).permit(:title, :text, images_attributes: [:id, :file, :_destroy])
  end
end

