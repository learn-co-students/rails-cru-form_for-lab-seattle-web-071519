class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
    end
    
    def new
        @artist = Artist.new
    end
    
    def show
        @artist = Artist.find(params[:id])
    end
   
    def create
        @artist = Artist.new(params.require(:artist).permit(:name, :bio))
        @artist.save
        redirect_to artist_path(@artist.id)
    end

    def edit
        @artist = Artist.find(params[:id])
    end
    
    def update
        @artist = Artist.find(params[:id])
        @artist.update(params.require(:artist).permit(:name, :bio))
        redirect_to artist_path(@artist)
    end

    def destroy
        @artist = Artist.find(params[:id])
        @artist.delete
        redirect_to artist_path
    end


end
