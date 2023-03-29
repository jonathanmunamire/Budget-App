class GroupsController < ApplicationController
  def index
    @groups = Group.all
    @user = current_user.name
  end

  def show
    @group = Group.find_by(id: params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.create(group_params.merge(user_id: current_user.id))

    respond_to do |format|
      format.html do
        if @group.save
          redirect_to groups_path
        else
          redirect_to new_group_path
        end
      end
    end
  end

  def destroy
    @group = Group.find_by(id: params[:id])

    if @group.destroy
      flash[:notice] = 'Group deleted successfully.'
    else
      flash[:alert] = 'Failed to delete group.'
    end

    redirect_to groups_path
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
