class SongsController < ApplicationController
    def index
        @songs = Song.all
        render json: @songs
    end
    def create
        user = current_user || nil
        if user
            @song = user.songs.build(song_params)
        else 
            @song = Song.new(song_params)
        end
        if @song.save
            render json: @song
        else
            render status: 400
        end
    end
    
    def show
        @song = Song.find(params[:id])
        render json: @song
    end
    def update
        @song = Song.find(params[:id])
        if @song.update(song_params)
            render status: 202
        else
            render status: 404
        end
    end
    def destroy
        @song = Song.find(params[:id])
        @song.destroy
    end

    private
    def song_params
        params.require(:song).permit(:title,:artist,:content) 
    end
end
