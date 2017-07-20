class SongsController < ApplicationController
    def index
        @songs = Song.all
    end
    def create
    end
    def new
    end
    def edit
    end
    def show
        @song = Song.find(params[:id])
        @song_html = Chordpro.html(@song.content)
    end
    def update
    end
    def destroy
    end
    
end
