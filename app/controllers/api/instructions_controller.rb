module Api
  class InstructionsController < ApplicationController
  	
    def index
      @instructions = Instruction.page(params[:page]).per(params[:per])
    end

    def show
      @instruction = Instruction.find(params[:id])
  	end
  
  end
end