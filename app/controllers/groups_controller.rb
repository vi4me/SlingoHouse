class GroupsController < ApplicationController
  
  def index
  	 @groups = Group.order('created_at DESC')
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def edit
    @group = Group.find(params[:id])
  end
 
  def create
    @group = Group.create(group_params)
  end

  def update
    @group = Group.find(params[:id])
    @group = @group.update(group_params)
  end

  def destroy
  @group = Group.find(params[:id])
  @group.destroy
end

 private
  def group_params
    params.require(:group).permit(:title, :text, images_attributes: [:id, :file, :_destroy])
  end
end