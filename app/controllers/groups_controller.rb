class GroupsController < ApplicationController
    skip_before_action :authenticate_request
    def new
        if current_user
            @group = current_user.groups.build 
        else
            @group = Group.new
        end
        render json: @group
    end

    def create
        if current_user
            @group = current_user.groups.create(group_params)
            render json: @group
        else
            render body: null, status: 404    
        end
        
    end

    def show
        @group = Group.find(params[:id])
        render json: @group
    end
    
    def edit
        @group = Group.find(params[:id])
        render json: @group
    end
    
    def update
        @group = Group.find(params[:id])
        if @group.update(group_params)
            render json: @group
        else
            render body: null, status: 404
        end
    end
    def destroy
        @group = Group.find(params[:id])
        @group.destroy
        render body: null, status: 202
    end
    def index
        if current_user
        @groups = current_user.groups 
        else 
            @groups = Group.all
        end
        render json: @groups
    end
    private
    def group_params
        params.require(:group).permit(:name, :users_attributes => [:user_ids => []], :setlists_attributes => [:setlist_ids => []]) 
    end
end
