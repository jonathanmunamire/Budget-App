class GroupsController < ApplicationController
  def index
    @categories = Group.all
    @user = current_user.name
  end

  def show
    @category = Group.find_by(id: params[:id])
  end

  def new
    @group = Group.new
  end
end
