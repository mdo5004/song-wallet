class SetlistsController < ApplicationController
    def new
        @setlist = Setlist.new 
    end
    def create
        @setlist = Setlist.new(setlist_params)
        @setlist.user_ids = current_user.id
        if @setlist.save
            
            redirect_to root_path 
        else
            render :new
        end
    end
    def show
        @setlist = Setlist.find(params[:id]) 
    end
    def edit
        @setlist = Setlist.find(params[:id])
    end
    def index
         @setlists = current_user.setlists
    end
    
    def update
        @setlist = Setlist.find(params[:id])
        if @setlist.update(setlist_params)
            redirect_to setlist_path(@setlist)
        else
            render :edit
        end
    end
       
    def destroy
        @setlist = Setlist.find(params[:id])
        @setlist.destroy
        redirect_to root_path
    end
    
    private
    def setlist_params
        params.require(:setlist).permit(:name, :songs_attributes => [:song_ids => []])
    end 
end
