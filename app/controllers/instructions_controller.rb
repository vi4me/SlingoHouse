class InstructionsController < ApplicationController

	def index
  	 @instructions = Instruction.all
  end

  def show
    @instruction = Instruction.find(params[:id])
  end

  def new
    @instruction = Instruction.new
  end

  def edit
    @instruction = Instruction.find(params[:id])
  end
 
  def create
    @instruction = Instruction.create(instruction_params)
  end

  def update
    @instruction = Instruction.find(params[:id])
    @instruction = @instruction.update(instruction_params)
  end

  def destroy
    @instruction = Instruction.find(params[:id])
    @instruction.destroy
  end

 private
  def instruction_params
    params.require(:instruction).permit(:title, :text, images_attributes: [:id, :file, :_destroy])
  end
end
