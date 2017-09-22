class GroupsController < ApplicationController
  
  def index
  	 @groups = Group.all
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
    @group = Group.new(group_params)
    @group.title = params[:group][:title]
    @group.text = params[:group][:text]
    @group.picture = params[:group][:picture]
    @group.save
  end

  def update
    @group = Group.find(params[:id])
    @group.update(group_params)
  end

  def destroy
  @group = Group.find(params[:id])
  @group.destroy
end

 private
  def group_params
    params.require(:group).permit(:title, :text, :picture)
  end
end