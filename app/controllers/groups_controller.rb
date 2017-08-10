class GroupsController < ApplicationController
    def new
        if current_user
            @group = current_user.groups.build 
        else
            @group = Group.new
        end
    end

    def create
        if current_user
            @group = current_user.groups.create(group_params)
            
        else
            redirect_to signin_path
        end
        redirect_to root_path
    end

    def show
        @group = Group.find(params[:id])
    end
    
    def edit
        @group = Group.find(params[:id])
    end
    
    def update
        @group = Group.find(params[:id])
        if @group.update(group_params)
            redirect_to group_path(@group) 
        else
            render :edit
        end
    end
    def destroy
        @group = Group.find(params[:id])
        @group.destroy
        redirect_to root_path
    end
    def index
        @groups = current_user.groups
    end
    private
    def group_params
        params.require(:group).permit(:name, :users_attributes => [:user_ids => []], :setlists_attributes => [:setlist_ids => []]) 
    end
end
