class SetlistsController < ApplicationController
#    skip_before_action :authenticate_request
    def new
        @setlist = Setlist.new 
        render json: @setlist
    end
    def create
        @setlist = Setlist.new(setlist_params)
        @setlist.user_ids = current_user.id
        if @setlist.save
            render json: @setlist
        else
            render body: nil, head: {status: 304}
        end
    end
    def show
        @setlist = Setlist.find(params[:id]) 
        render json: @setlist
    end
    def edit
        @setlist = Setlist.find(params[:id])
        render json: @setlist
    end
    def index
         @setlists = current_user.setlists
        render json: @setlists
    end
    
    def update
        @setlist = Setlist.find(params[:id])
        if @setlist.update(setlist_params)
            render json: @setlist
        else
            render status: 304
        end
    end
       
    def destroy
        @setlist = Setlist.find(params[:id])
        @setlist.destroy
        render body: nil, head: {status: 204}
    end
    
    private
    def setlist_params
        params.require(:setlist).permit(:name, :songs_attributes => [:song_ids => []])
    end 
end
